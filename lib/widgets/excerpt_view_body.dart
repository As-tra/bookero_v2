import 'package:bookero_my_version/widgets/excerpt_app_bar.dart';
import 'package:flutter/material.dart';

class ExcerptViewBody extends StatelessWidget {
  const ExcerptViewBody({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        ExcerptAppBar(),
      ],
    );
  }
}
