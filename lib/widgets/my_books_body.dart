import 'package:bookero_my_version/constants.dart';
import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyBooksBody extends StatelessWidget {
  const MyBooksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 270,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.kBookView,
                    extra: books[index],
                  );
                },
                child: Hero(
                  tag: books[index].image,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kRadius),
                      child: Image.asset(books[index].image),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
