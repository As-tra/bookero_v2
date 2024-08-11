import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class AudioBooksHeader extends StatelessWidget {
  const AudioBooksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Audio Books",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "See all",
              style: TextStyle(fontSize: 16, color: AppColors.g2color),
            ),
          ],
        ),
      ),
    );
  }
}
