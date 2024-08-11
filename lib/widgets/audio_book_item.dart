import 'package:bookero_my_version/models/audio_book_model.dart';
import 'package:bookero_my_version/utils/colors.dart';
import 'package:bookero_my_version/widgets/audio_book_item_disque.dart';
import 'package:bookero_my_version/widgets/audio_book_item_rating.dart';
import 'package:flutter/material.dart';

class AudioBookItem extends StatelessWidget {
  const AudioBookItem({super.key, required this.bookModel});
  final AudioBookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AudioBookItemDisque(bookModel: bookModel),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getTitle(),
            const SizedBox(height: 6),
            _getAuther(),
            const SizedBox(height: 6),
            AudioBookRating(rating: bookModel.rating),
          ],
        )
      ],
    );
  }

  Row _getAuther() {
    return Row(
      children: [
        const Text(
          'Auther | ',
          style: TextStyle(
            color: AppColors.bgAccentColor,
          ),
        ),
        Text(
          bookModel.auther,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Text _getTitle() {
    return Text(
      bookModel.title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
