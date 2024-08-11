import 'package:bookero_my_version/models/audio_book_model.dart';
import 'package:bookero_my_version/utils/colors.dart';
import 'package:flutter/material.dart';

class AudioBookItemDisque extends StatelessWidget {
  const AudioBookItemDisque({
    super.key,
    required this.bookModel,
  });

  final AudioBookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(bookModel.image),
      radius: 55,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: _buildPlayButton(),
          ),
          Positioned.fill(
            child: _buildDisqueIcon(),
          ),
        ],
      ),
    );
  }

  Icon _buildDisqueIcon() {
    return Icon(
      Icons.album,
      size: 50,
      color: Colors.white.withOpacity(0.6),
    );
  }

  CircleAvatar _buildPlayButton() {
    return const CircleAvatar(
      radius: 12,
      backgroundColor: AppColors.g2color,
      child: Icon(
        size: 16,
        Icons.play_arrow,
        color: AppColors.bgColor,
      ),
    );
  }
}
