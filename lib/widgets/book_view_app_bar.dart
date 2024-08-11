import 'package:bookero_my_version/utils/assets.dart';
import 'package:flutter/material.dart';

class BookViewAppBar extends StatelessWidget {
  const BookViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Image.asset(
            Assets.iconsBack,
            height: 24,
          ),
        ),
        Image.asset(
          Assets.iconsSave,
          height: 24,
        ),
      ],
    );
  }
}
