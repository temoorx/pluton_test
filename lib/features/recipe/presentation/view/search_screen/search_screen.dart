import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/features/recipe/presentation/cubit/recipe_search_cubit.dart';
import 'package:pluton_test/features/recipe/presentation/view/search_screen/widgets/recipe_card.dart';
import 'package:pluton_test/features/recipe/presentation/view/search_screen/widgets/search_bar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeSearchScreen extends StatelessWidget {
  const RecipeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Recipe Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SearchBarWidget(onChanged: (value) {
                context
                    .read<RecipeSearchCubit>()
                    .searchRecipes({'query': value});
              }),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<RecipeSearchCubit, RecipeSearchState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) =>
                          const Text('Start searching for recipes!'),
                      loading: (_) => ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => const Skeletonizer(
                          child: ListTile(
                            title: SizedBox(
                              width: double.infinity,
                              height: 20.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                            ),
                            leading: CircleAvatar(
                              radius: 25.0,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      loaded: (state) => ListView.builder(
                        itemCount: state.recipes.length,
                        itemBuilder: (context, index) {
                          final recipe = state.recipes[index];
                          return RecipeCard(
                            id: recipe.id,
                            image: recipe.image,
                            title: recipe.title,
                          );
                        },
                      ),
                      error: (state) =>
                          const Text('An error occurred. Please try again.'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
