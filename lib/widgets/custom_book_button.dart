import 'package:bookero_my_version/models/book_button_model.dart';
import 'package:flutter/material.dart';

class CustomBookButton extends StatelessWidget {
  const CustomBookButton({super.key, required this.buttonModel});
  final BookButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonModel.ontap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: buttonModel.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              buttonModel.iconData,
              color: Colors.white,
              size: 26,
            ),
            const SizedBox(width: 10),
            Flexible(
              child: FittedBox(
                child: Text(
                  buttonModel.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
