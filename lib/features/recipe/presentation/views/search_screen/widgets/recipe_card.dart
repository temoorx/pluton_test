import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pluton_test/features/recipe/presentation/views/recipe_detail_screen/recipe_detail_screen.dart';

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
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              imageUrl: image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          // trailing: IconButton(
          //   onPressed: () async {
          //     // Add to favorite
          //     SharedPreferences prefs = await SharedPreferences.getInstance();
          //     List<String>? favorites = prefs.getStringList('favorites');
          //     favorites ??= [];
          //     favorites.add(title);
          //     await prefs.setStringList('favorites', favorites);
          //   },
          //   icon: const Icon(
          //     Icons.favorite,
          //   ),
          // ),
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              enableDrag: true,
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
              builder: (context) => Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20.0)),
                    ),
                    child: RecipeDetailScreen(
                      id: id,
                      title: title,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
