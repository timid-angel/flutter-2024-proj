import 'package:flutter/material.dart';

class PlaylistWidget extends StatelessWidget {
  const PlaylistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 65,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        title: Text(
          'Masinqo',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.grey[50],
                fontWeight: FontWeight.w300,
                fontSize: 32,
              ),
        ),
      ),
      body: Column(
        children: [],
      ),
      endDrawer: const Drawer(),
    );
  }
}
