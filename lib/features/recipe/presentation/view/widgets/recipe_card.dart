import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.title,
    required this.image,
  });

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
        onTap: () {},
      ),
    );
  }
}
