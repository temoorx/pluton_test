import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/domain/cubit/hive_storage_cubit.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';

class RecipeDetailHeader extends StatefulWidget {
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
  State<RecipeDetailHeader> createState() => _RecipeDetailHeaderState();
}

class _RecipeDetailHeaderState extends State<RecipeDetailHeader> {
  late bool _isSaved;

  @override
  void initState() {
    super.initState();
    _isSaved = context.read<HiveStorageCubit>().isSaved(widget.recipe.id!);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: CachedNetworkImage(
            imageUrl: widget.imageUrl,
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
          child: IconButton(
            icon: _isSaved
                ? const Icon(Icons.favorite, color: Colors.red, size: 30.0)
                : const Icon(Icons.favorite_border,
                    color: Colors.white, size: 30.0),
            onPressed: _toggleSavedState,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 16,
          child: Text(
            widget.title,
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
                  "Score: ${widget.recipe.spoonacularScore}",
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

  void _toggleSavedState() {
    final cubit = context.read<HiveStorageCubit>();
    if (_isSaved) {
      cubit.deleteRecipe(widget.recipe.id!);
    } else {
      cubit.saveRecipe(widget.recipe);
    }
    setState(() {
      _isSaved = !_isSaved;
    });
  }
}
