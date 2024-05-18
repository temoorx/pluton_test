import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/domain/repository/cubit/hive_storage_cubit.dart';
import 'package:pluton_test/features/recipe/presentation/view/recipe_detail_screen/recipe_detail_screen.dart';
import 'package:pluton_test/features/recipe/presentation/view/search_screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HiveStorageCubit>().loadRecipes();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RecipeSearchScreen(),
            ),
          );
        },
        child: const Icon(Icons.search),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: BlocConsumer<HiveStorageCubit, HiveStorageState>(
          listener: (context, state) =>
              state.maybeWhen(deleteSuccess: (message) {
            context.read<HiveStorageCubit>().loadRecipes();
            return null;
          }, orElse: () {
            return null;
          }),
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Container();
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (recipes) {
                if (recipes.isEmpty) {
                  return const Center(child: Text('No recipes available'));
                } else {
                  return ListView.builder(
                    itemCount: recipes.length,
                    itemBuilder: (context, index) {
                      final recipe = recipes[index];
                      return Dismissible(
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        key: ValueKey(recipe.id),
                        direction: DismissDirection.endToStart,
                        dismissThresholds: const {
                          DismissDirection.endToStart: 0.5
                        },
                        onDismissed: (direction) {
                          context
                              .read<HiveStorageCubit>()
                              .deleteRecipe(recipe.id!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ListTile(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => RecipeDetailScreen(
                                  id: recipe.id!,
                                  title: recipe.title!,
                                ),
                              );
                            },
                            leading: Image.network(recipe.image ?? '',
                                width: 50, height: 50, fit: BoxFit.cover),
                            title: Text(recipe.title ?? 'Untitled'),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
              error: (message) => Center(child: Text('Error: $message')),
            );
          },
        ),
      ),
    );
  }
}
