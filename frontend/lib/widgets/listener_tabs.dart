import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(
            Icons.home_filled,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.library_music,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
