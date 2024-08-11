import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MyBooksHeader extends StatelessWidget {
  const MyBooksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Books",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              dashPattern: const [5, 5],
              radius: const Radius.circular(5),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
