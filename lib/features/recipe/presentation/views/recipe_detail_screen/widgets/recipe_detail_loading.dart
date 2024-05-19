import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeDetailLoading extends StatelessWidget {
  const RecipeDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First row with two containers
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Second row with five small containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                5,
                (index) => Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Placeholder text lines
            for (int i = 0; i < 6; i++) ...[
              Container(
                height: 15,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 10),
            ],
            const SizedBox(height: 20),
            // A longer placeholder text line
            Container(
              height: 15,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(height: 20),
            // A placeholder button
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            // A placeholder text line
            Container(
              height: 15,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
