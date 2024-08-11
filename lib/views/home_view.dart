import 'package:bookero_my_version/utils/colors.dart';
import 'package:bookero_my_version/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
