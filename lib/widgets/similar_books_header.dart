import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class SimilarBooksHeader extends StatelessWidget {
  const SimilarBooksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Similar Books",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.g2color,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
