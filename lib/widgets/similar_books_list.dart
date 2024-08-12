import 'package:bookero_my_version/models/book_model.dart';
import 'package:flutter/material.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: moreBooks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(moreBooks[index]),
            ),
          );
        },
      ),
    );
  }
}
