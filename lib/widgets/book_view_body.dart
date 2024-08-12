import 'package:bookero_my_version/constants.dart';
import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/widgets/book_cover.dart';
import 'package:bookero_my_version/widgets/book_details.dart';
import 'package:bookero_my_version/widgets/book_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      decoration: const BoxDecoration(
        gradient: kGradient,
      ),
      child: Column(
        children: [
          const BookViewAppBar(),
          const SizedBox(height: 35),
          BookCover(cover: bookModel.image),
          const SizedBox(height: 25),
          BookDetails(bookModel: bookModel),
        ],
      ),
    );
  }
}
