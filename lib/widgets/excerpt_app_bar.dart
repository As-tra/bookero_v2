import 'package:bookero_my_version/utils/assets.dart';
import 'package:flutter/material.dart';

class ExcerptAppBar extends StatelessWidget {
  const ExcerptAppBar({super.key, required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      expandedHeight: 80,
      pinned: true,
      titleSpacing: 0,
      collapsedHeight: 80,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset(
                Assets.iconsBack,
                height: 24,
              ),
            ),
            const Spacer(),
            const Text(
              'Progress',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: LinearProgressIndicator(
                value: value,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
