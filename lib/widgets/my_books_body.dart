import 'package:bookero_my_version/constants.dart';
import 'package:bookero_my_version/models/book_model.dart';
import 'package:flutter/material.dart';

class MyBooksBody extends StatelessWidget {
  const MyBooksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 270,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return _buildBooksLIstItem(index);
            },
          ),
        ),
      ),
    );
  }

  Padding _buildBooksLIstItem(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kRadius),
        child: Image.asset(books[index].image),
      ),
    );
  }
}
