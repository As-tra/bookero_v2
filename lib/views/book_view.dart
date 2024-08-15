import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/widgets/book_view_body.dart';
import 'package:bookero_my_version/widgets/custom_floating_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookView extends StatefulWidget {
  const BookView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView>
    with SingleTickerProviderStateMixin {
  // this controller to track the scroll of the screen
  late ScrollController _scrollController;
  // those are the animation and their controller
  late Animation<double> _opacityAnimation;
  late AnimationController _opacityController;

  void _scrollListener() {
    // test if the user scroll down we hide the buttons
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      _opacityController.forward();
    }
    // test if the user scroll up we show the buttons
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      _opacityController.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    _opacityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _opacityAnimation =
        Tween<double>(begin: 1, end: 0).animate(_opacityController);

    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _opacityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookViewBody(
        scrollController: _scrollController,
        bookModel: widget.bookModel,
      ),
      floatingActionButton: Visibility(
        visible: _opacityAnimation.isCompleted,
        child: CustomFloatingButtons(
          opacityAnimation: _opacityAnimation,
          title: widget.bookModel.title,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
