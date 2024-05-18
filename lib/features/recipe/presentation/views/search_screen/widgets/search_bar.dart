import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String?) onChanged;
  const SearchBarWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for recipes...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        // fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
