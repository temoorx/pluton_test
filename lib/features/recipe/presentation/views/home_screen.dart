import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pluton_test/features/recipe/presentation/views/fav_recipe_screen/fav_recipe_screen.dart';
import 'package:pluton_test/features/recipe/presentation/views/search_screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: AnimatedTextKit(
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              TypewriterAnimatedText(
                'Recipes You Love...',
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.search),
                text: 'Search Recipes',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite Recipes',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            RecipeSearchScreen(),
            FavRecipes(),
          ],
        ),
      ),
    );
  }
}
