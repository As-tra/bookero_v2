import 'package:bookero_my_version/widgets/excerpt_view_body.dart';
import 'package:flutter/material.dart';

class ExcerptView extends StatelessWidget {
  const ExcerptView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ExcerptViewBody(title: title),
    );
  }
}