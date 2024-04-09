import 'package:flutter/material.dart';

class ListenerAppbar extends StatelessWidget {
  const ListenerAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
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
