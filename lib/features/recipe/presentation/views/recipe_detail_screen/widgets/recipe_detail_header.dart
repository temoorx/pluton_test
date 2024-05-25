import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/domain/cubit/hive_storage_cubit.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';

class RecipeDetailHeader extends StatelessWidget {
  const RecipeDetailHeader({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.recipe,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final RecipeDetails recipe;

  @override
  Widget build(BuildContext context) {
    bool isSaved;
    isSaved = context.read<HiveStorageCubit>().isSaved(recipe.id!);
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Row(
                    children: [
                      //close button
                      Icon(Icons.close, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        'Close',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: StatefulBuilder(
            builder: (context, setState) {
              return IconButton(
                icon: isSaved
                    ? const Icon(Icons.favorite, color: Colors.red, size: 30.0)
                    : const Icon(Icons.favorite_border,
                        color: Colors.white, size: 30.0),
                onPressed: () {
                  final cubit = context.read<HiveStorageCubit>();
                  if (isSaved) {
                    cubit.deleteRecipe(recipe.id!);
                  } else {
                    cubit.saveRecipe(recipe);
                  }
                  setState(() {
                    isSaved = !isSaved;
                  });
                },
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 16,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.black54,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                const SizedBox(width: 5),
                Text(
                  "Score: ${recipe.spoonacularScore}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
