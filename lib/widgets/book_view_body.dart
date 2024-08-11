import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}