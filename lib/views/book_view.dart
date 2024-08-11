import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/widgets/book_view_body.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookViewBody(
        bookModel: bookModel,
      ),
    );
  }
}
