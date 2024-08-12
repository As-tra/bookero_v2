import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.cover,
  });

  final String cover;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: cover,
      child: Image.asset(
        cover,
        height: 350,
      ),
    );
  }
}
