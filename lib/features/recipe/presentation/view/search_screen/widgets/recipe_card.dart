import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pluton_test/features/recipe/presentation/view/recipe_detail_screen/recipe_detail_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.title,
    required this.image,
    required this.id,
  }) : super(key: key);

  final int id;
  final String title;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        leading: CachedNetworkImage(
          imageUrl: image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        trailing: IconButton(
          onPressed: () async {
            // Add to favorite
            SharedPreferences prefs = await SharedPreferences.getInstance();
            List<String>? favorites = prefs.getStringList('favorites');
            favorites ??= [];
            favorites.add(title);
            await prefs.setStringList('favorites', favorites);
          },
          icon: Icon(
            Icons.favorite,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RecipeDetailScreen(
                title: title,
                id: id,
              ),
            ),
          );
        },
      ),
    );
  }
}
