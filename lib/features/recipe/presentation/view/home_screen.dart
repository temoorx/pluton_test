import 'package:flutter/material.dart';
import 'package:pluton_test/features/recipe/presentation/view/search_screen/search_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> favoriteList = [];

  @override
  void initState() {
    super.initState();
    loadFavoriteList();
  }

  Future<void> loadFavoriteList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> storedList = prefs.getStringList('favorites') ?? [];
    setState(() {
      favoriteList = storedList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RecipeSearchScreen(),
            ),
          );
        },
        child: const Icon(Icons.search),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteList[index]),
          );
        },
      ),
    );
  }
}
