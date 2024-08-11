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
            _getTitle(context),
            const SizedBox(height: 6),
            _getAuther(),
            const SizedBox(height: 6),
            AudioBookRating(rating: bookModel.rating),
          ],
        )
      ],
    );
  }

  SizedBox _getTitle(BuildContext context) {
    return SizedBox(
      // I calculate the size of the text 45 radius + 20 gap + 32 padding
      width: MediaQuery.sizeOf(context).width - 142,
      child: Text(
        bookModel.title,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
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
          bookModel.author,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
