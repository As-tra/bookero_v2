import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class AudioBookRating extends StatelessWidget {
  const AudioBookRating({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => const Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            ),
          ),
        ),
        Text(
          "$rating Rating",
          style: const TextStyle(
            color: AppColors.bgAccentColor,
          ),
        ),
      ],
    );
  }
}
