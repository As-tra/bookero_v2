import 'package:bookero_my_version/models/book_model.dart';
import 'package:flutter/material.dart';

class ExcerptBody extends StatelessWidget {
  const ExcerptBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
        child: Text(excerpt),
      ),
    );
  }
}
