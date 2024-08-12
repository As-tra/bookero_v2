import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class BookPriceAndReviews extends StatelessWidget {
  const BookPriceAndReviews(
      {super.key, required this.review, required this.price});
  final String review, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: 'Price | ',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: "\$${double.parse(price).toString()}",
                style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Reviews(192)',
          style: TextStyle(
            fontSize: 20,
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
