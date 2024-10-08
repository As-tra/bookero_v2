import 'package:bookero_my_version/constants.dart';
import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/widgets/book_cover.dart';
import 'package:bookero_my_version/widgets/book_details.dart';
import 'package:bookero_my_version/widgets/book_intro.dart';
import 'package:bookero_my_version/widgets/book_price_and_reviews.dart';
import 'package:bookero_my_version/widgets/book_view_app_bar.dart';
import 'package:bookero_my_version/widgets/similar_books_header.dart';
import 'package:bookero_my_version/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key, required this.bookModel, required this.scrollController});
  final BookModel bookModel;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      decoration: const BoxDecoration(
        gradient: kGradient,
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const BookViewAppBar(),
            const SizedBox(height: 35),
            BookCover(cover: bookModel.image),
            const SizedBox(height: 25),
            BookDetails(bookModel: bookModel),
            const SizedBox(height: 25),
            BookIntro(intro: bookModel.description),
            const SizedBox(height: 25),
            BookPriceAndReviews(
                review: bookModel.rating, price: bookModel.price),
            const SizedBox(height: 25),
            const SimilarBooksHeader(),
            const SizedBox(height: 15),
            const SimilarBooksList(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
