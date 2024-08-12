import 'dart:developer';

import 'package:bookero_my_version/widgets/excerpt_app_bar.dart';
import 'package:bookero_my_version/widgets/excerpt_body.dart';
import 'package:bookero_my_version/widgets/excerpt_header.dart';
import 'package:flutter/material.dart';

class ExcerptViewBody extends StatefulWidget {
  const ExcerptViewBody({super.key, required this.title});
  final String title;

  @override
  State<ExcerptViewBody> createState() => _ExcerptViewBodyState();
}

class _ExcerptViewBodyState extends State<ExcerptViewBody> {
  double value = 0;
  late ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(
        () {
          value = scrollController.position.pixels /
              scrollController.position.maxScrollExtent;
          setState(() {});
        },
      );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        ExcerptAppBar(value: value),
        ExcerptHeader(title: widget.title),
        const ExcerptBody(),
      ],
    );
  }
}
