import 'package:flutter/material.dart';

class ExcerptAppBar extends StatelessWidget {
  const ExcerptAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 80,
      pinned: true,
      titleSpacing: 0,
      collapsedHeight: 80,
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        
        child: Row(
          children: [
            const Text(
              'Bookero',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            
          
          ],
        ),
      ),
    );
  }
}