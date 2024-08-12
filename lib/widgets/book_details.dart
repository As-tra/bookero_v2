import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bookModel.title.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Author | ${bookModel.author}  Rating | ${bookModel.rating} ',
              style: const TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
              ),
            ),
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            ),
          ],
        )
      ],
    );
  }
}
