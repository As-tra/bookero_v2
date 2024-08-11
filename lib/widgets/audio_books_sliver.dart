import 'package:bookero_my_version/models/book_model.dart';
import 'package:bookero_my_version/widgets/audio_book_item.dart';
import 'package:flutter/material.dart';

class AudioBooksSliver extends StatelessWidget {
  const AudioBooksSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList.builder(
        itemCount: audioBooks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: AudioBookItem(bookModel: audioBooks[index]),
          );
        },
      ),
    );
  }
}
