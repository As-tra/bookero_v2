import 'package:bookero_my_version/widgets/audio_books_header.dart';
import 'package:bookero_my_version/widgets/audio_books_sliver.dart';
import 'package:bookero_my_version/widgets/landing_section.dart';
import 'package:bookero_my_version/widgets/my_books_body.dart';
import 'package:bookero_my_version/widgets/my_books_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 4;
    return const CustomScrollView(
      slivers: [
        LandingSection(),
        MyBooksHeader(),
        MyBooksBody(),
        AudioBooksHeader(),
        AudioBooksSliver(),
      ],
    );
  }
}
