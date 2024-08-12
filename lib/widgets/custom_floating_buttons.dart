
import 'package:bookero_my_version/models/book_button_model.dart';
import 'package:bookero_my_version/utils/colors.dart';
import 'package:bookero_my_version/widgets/custom_book_button.dart';
import 'package:flutter/material.dart';

class CustomFloatingButtons extends StatelessWidget {
  const CustomFloatingButtons({
    super.key,
    required Animation<double> opacityAnimation,
  }) : _opacityAnimation = opacityAnimation;

  final Animation<double> _opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: Row(
          children: [
            Expanded(
              child: CustomBookButton(
                buttonModel: BookButtonModel(
                  () {},
                  text: 'read excerpt'.toUpperCase(),
                  iconData: Icons.menu_book_outlined,
                  color: AppColors.iColor,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: CustomBookButton(
                buttonModel: BookButtonModel(
                  () {},
                  text: 'buy now'.toUpperCase(),
                  iconData: Icons.shopping_cart_outlined,
                  color: AppColors.g2color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
