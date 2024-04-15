import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_theme_data.dart';
import 'package:masinqo/pages/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.listnerTheme,
      home: const LoginWidget(),
    ),
  );
}
