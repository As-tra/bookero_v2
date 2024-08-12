import 'package:flutter/material.dart';

class BookButtonModel {
  final String text;
  final IconData iconData;
  final Color color;
  final VoidCallback ontap;

  BookButtonModel(
    this.ontap, {
    required this.text,
    required this.iconData,
    required this.color,
  });
}
