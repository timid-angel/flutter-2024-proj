import 'package:flutter/material.dart';

class AdminTabs extends StatelessWidget {
  const AdminTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.headset,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
