import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/AppThemeData.dart';

import 'package:masinqo/pages/listener_playlist.dart';

void main() {
  runApp(
    MaterialApp(
      home: PlaylistWidget(),
      theme: AppThemeData.listnerTheme,
    ),
  );
}
