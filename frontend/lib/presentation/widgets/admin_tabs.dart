import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_colors.dart';

class AdminTabs extends StatelessWidget {
  const AdminTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      dividerHeight: 0,
      indicatorColor: AppColors.listener2,
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
