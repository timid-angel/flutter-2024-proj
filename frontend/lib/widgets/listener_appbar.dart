import 'package:flutter/material.dart';

class ListenerAppbar extends StatelessWidget {
  const ListenerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      leading: Image.asset(
        "assets/images/logo.png",
      ),
      title: const Text(
        'Masinqo',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
