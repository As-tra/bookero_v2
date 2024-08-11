import 'package:bookero_my_version/constants.dart';
import 'package:bookero_my_version/utils/assets.dart';
import 'package:flutter/material.dart';

class LandingSection extends StatelessWidget {
  const LandingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kRadius),
          child: Image.asset(Assets.imagesBg),
        ),
      ),
    );
  }
}
