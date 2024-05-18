import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/domain/repository/cubit/hive_storage_cubit.dart';
import 'package:pluton_test/features/recipe/presentation/cubit/recipt_detail_cubit.dart';
import 'package:pluton_test/features/recipe/presentation/view/recipe_detail_screen/widgets/recipe_detail_header.dart';
import 'package:pluton_test/features/recipe/presentation/view/recipe_detail_screen/widgets/recipe_detail_info_row.dart';
import 'package:pluton_test/features/recipe/presentation/view/recipe_detail_screen/widgets/recipe_detail_section_title.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key, required this.id, required this.title});
  final int id;
  final String title;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<RecipeDetailCubit>(context).getReciptDetail(id: id);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: SizedBox(
        width: 400,
        child: BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (recipe) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecipeDetailHeader(
                      imageUrl: recipe.image!,
                      title: title,
                      recipe: recipe,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RecipeDetailInfoRow(
                        label: 'Servings:', value: recipe.servings.toString()),
                    RecipeDetailInfoRow(
                        label: 'Ready in:',
                        value: '${recipe.readyInMinutes} minutes'),
                    RecipeDetailInfoRow(
                        label: 'Health Score:',
                        value: recipe.healthScore.toString()),
                    RecipeDetailInfoRow(
                        label: 'Price per serving:',
                        value:
                            '\$${recipe.pricePerServing!.toStringAsFixed(2)}'),
                    RecipeDetailInfoRow(
                        label: 'Source:', value: recipe.sourceName ?? 'N/A'),
                    RecipeDetailInfoRow(
                        label: 'License:', value: recipe.license ?? 'N/A'),
                    RecipeDetailInfoRow(
                        label: 'Dish Types:',
                        value: recipe.dishTypes!.join(", ")),
                    recipe.winePairing!.pairedWines!.isEmpty
                        ? const Column()
                        : const RecipeDetailSectionTitle(
                            title: 'Wine Pairing:'),
                    recipe.winePairing!.pairedWines!.isEmpty
                        ? const Column()
                        : Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Recommended wines: ${recipe.winePairing!.pairedWines!.join(", ")}',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                    // Padding(
                    //   padding: const EdgeInsets.all(16.0),
                    //   child: Text(
                    //     'Pairing Text: ${recipe.winePairing!.pairingText}',
                    //     style: const TextStyle(fontSize: 16),
                    //   ),
                    // ),
                    const RecipeDetailSectionTitle(title: 'Ingredients:'),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
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
                          // leading: Image.network(ingredient.image!),
                        );
                      },
                    ),
                    const RecipeDetailSectionTitle(title: 'Summary:'),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(recipe.summary!),
                    ),
                    const RecipeDetailSectionTitle(
                        title: 'Wine Product Matches:'),
                    recipe.winePairing!.productMatches!.isEmpty
                        ? const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('No wine product matches available'),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount:
                                recipe.winePairing!.productMatches!.length,
                            itemBuilder: (context, index) {
                              final wineMatch =
                                  recipe.winePairing!.productMatches![index];
                              return ListTile(
                                title: Text(wineMatch.title!),
                                subtitle: Text(
                                    '${wineMatch.description} \nPrice: ${wineMatch.price}'),
                                // leading: Image.network(wineMatch.imageUrl!),
                              );
                            },
                          ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              error: (state) => Center(child: Text(state)),
            );
          },
        ),
      ),
    );
  }
}
