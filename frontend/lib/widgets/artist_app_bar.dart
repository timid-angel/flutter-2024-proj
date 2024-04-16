import '../pages/artist.dart';
import 'package:flutter/material.dart';

class ArtistAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const ArtistAppBar({super.key, this.scaffoldKey});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
        ),
      ),
      title: const Text(
        'Masinqo',
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontFamily: 'Inter',
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ArtistHomePage()),
            );
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            scaffoldKey?.currentState?.openEndDrawer();
          },
        ),
      ],
    );
  }
}
