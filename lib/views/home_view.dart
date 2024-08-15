import 'package:bookero_my_version/utils/colors.dart';
import 'package:bookero_my_version/widgets/custom_app_bar.dart';
import 'package:bookero_my_version/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        bottom: const PreferredSize(
          preferredSize: Size(80, 25),
          child: CustomAppBar(),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: const HomeViewBody(),
    );
  }
}
