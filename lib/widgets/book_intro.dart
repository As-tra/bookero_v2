import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class BookIntro extends StatelessWidget {
  const BookIntro({super.key, required this.intro});
  final String intro;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Introducation',
              style: TextStyle(
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            Text(
              intro,
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        )
      ],
    );
  }
}
