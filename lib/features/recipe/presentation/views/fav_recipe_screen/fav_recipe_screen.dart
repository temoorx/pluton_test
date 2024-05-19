import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/domain/cubit/hive_storage_cubit.dart';
import 'package:pluton_test/features/recipe/presentation/views/recipe_detail_screen/recipe_detail_screen.dart';

class FavRecipes extends StatelessWidget {
  const FavRecipes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HiveStorageCubit>().loadRecipes();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: BlocConsumer<HiveStorageCubit, HiveStorageState>(
        listener: (context, state) => state.maybeWhen(deleteSuccess: (message) {
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
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.red,
                        ),
                        alignment: Alignment.centerRight,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.delete, color: Colors.white),
                        ),
                      ),
                      key: ValueKey(recipe.id),
                      direction: DismissDirection.endToStart,
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
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                imageUrl: recipe.image ?? '',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(recipe.title ?? 'Untitled'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            )),
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
    );
  }
}
