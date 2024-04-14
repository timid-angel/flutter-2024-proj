import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_theme_data.dart';
import 'package:masinqo/data/admin_data.dart';
import 'package:masinqo/data/album_data.dart';
import 'package:masinqo/data/artist_data.dart';
import 'package:masinqo/data/database.dart';
import 'package:masinqo/data/listener_data.dart';
import 'package:masinqo/data/playlist_data.dart';
import 'package:masinqo/data/songs_data.dart';
// import 'package:masinqo/login.dart';
import 'package:masinqo/pages/listener.dart';

void main() {
  Database db = Database(
    admins: adminData,
    albums: albumData,
    artists: artistData,
    listeners: listenerData,
    playlists: playlistData,
    songs: songData,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.listnerTheme,
      home: ListenerWidget(
        albums: db.albums,
        favorites: db.listeners[2].favorites,
        playlists: db.playlists,
      ),
    ),
  );
}
