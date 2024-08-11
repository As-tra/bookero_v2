import 'package:bookero_my_version/widgets/custom_app_bar.dart';
import 'package:bookero_my_version/widgets/landing_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBar(),
        LandingSection(),
      ],
    );
  }
}
