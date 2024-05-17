import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/features/recipe/presentation/cubit/recipt_detail_cubit.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key, required this.id, required this.title});
  final int id;
  final String title;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ReciptDetailCubit>(context).getReciptDetail(id: id);
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: BlocBuilder<ReciptDetailCubit, ReciptDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (recipe) => ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(recipe.image!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Servings: ${recipe.servings}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ready in: ${recipe.readyInMinutes} minutes',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Health Score: ${recipe.healthScore}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Price per serving: \$${recipe.pricePerServing!.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Source: ${recipe.sourceName}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'License: ${recipe.license}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Dish Types: ${recipe.dishTypes!.join(", ")}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Wine Pairing:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  recipe.winePairing!.pairedWines == null
                      ? const Text('No wine pairing available')
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Recommended wines: ${recipe.winePairing!.pairedWines!.join(", ")}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pairing Text: ${recipe.winePairing!.pairingText}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Ingredients:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: recipe.extendedIngredients!.length,
                    itemBuilder: (context, index) {
                      final ingredient = recipe.extendedIngredients![index];
                      return ListTile(
                        title: Text(ingredient.name!),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Amount: ${ingredient.amount} ${ingredient.unit}'),
                            Text('Aisle: ${ingredient.aisle}'),
                          ],
                        ),
                        leading: Image.network(ingredient.image!),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Summary:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(recipe.summary!),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Wine Product Matches:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  recipe.winePairing!.productMatches == null
                      ? const Text('No wine product matches available')
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: recipe.winePairing!.productMatches!.length,
                          itemBuilder: (context, index) {
                            final wineMatch =
                                recipe.winePairing!.productMatches![index];
                            return ListTile(
                              title: Text(wineMatch.title!),
                              subtitle: Text(
                                  '${wineMatch.description} Price: ${wineMatch.price}'),
                              leading: Image.network(wineMatch.imageUrl!),
                            );
                          },
                        ),
                ],
              ),
              error: (state) => Center(
                child: Text(state),
              ),
            );
          },
        ));
  }
}
