import 'package:bookero_my_version/models/audio_book_model.dart';
import 'package:bookero_my_version/utils/assets.dart';
import 'package:bookero_my_version/widgets/audio_book_item.dart';
import 'package:bookero_my_version/widgets/audio_books_header.dart';
import 'package:bookero_my_version/widgets/custom_app_bar.dart';
import 'package:bookero_my_version/widgets/landing_section.dart';
import 'package:bookero_my_version/widgets/my_books_body.dart';
import 'package:bookero_my_version/widgets/my_books_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar(),
        LandingSection(),
        MyBooksHeader(),
        MyBooksBody(),
        AudioBooksHeader(),
        SliverToBoxAdapter(
          child: AudioBookItem(
            bookModel: AudioBookModel(
              image: Assets.images6,
              auther: "V.L. locey",
              title: "Taking the body",
              rating: 4.5,
            ),
          ),
        )
      ],
    );
  }
}
