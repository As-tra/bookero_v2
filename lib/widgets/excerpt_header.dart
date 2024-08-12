
import 'package:flutter/material.dart';

class ExcerptHeader extends StatelessWidget {
  const ExcerptHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Chapter 1: $title',
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
