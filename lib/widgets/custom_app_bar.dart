import 'package:bookero_my_version/utils/assets.dart';
import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 80,
      pinned: true,
      titleSpacing: 0,
      collapsedHeight: 80,
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.g1color.withOpacity(0.3),
              AppColors.g2color.withOpacity(0.3),
            ],
          ),
        ),
        child: Row(
          children: [
            const Text(
              'Bookero',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Image.asset(
              Assets.iconsSearch,
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 10),
            Image.asset(
              Assets.iconsMenu,
              height: 25,
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
