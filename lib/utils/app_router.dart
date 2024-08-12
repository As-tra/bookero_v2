import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/views/book_view.dart';
import 'package:bookero_my_version/views/excerpt_view.dart';
import 'package:bookero_my_version/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kBookView = '/book_view';
  static const kExcerptView = '/excerpt_view';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookView,
        builder: (context, state) => BookView(
          bookModel: state.extra as BookModel,
        ),
      ),
      GoRoute(
        path: kExcerptView,
        builder: (context, state) => ExcerptView(
          title: state.extra as String,
        ),
      ),
    ],
  );
}
