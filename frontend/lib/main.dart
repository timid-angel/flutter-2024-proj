import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_theme_data.dart';
import 'package:masinqo/pages/admin_home.dart';
import 'package:masinqo/pages/admin_login.dart';
import 'package:masinqo/pages/artist_album.dart';
import 'package:masinqo/pages/artist_home.dart';
import 'package:masinqo/pages/artist_profile.dart';
import 'package:masinqo/pages/listener.dart';
import 'package:masinqo/pages/listener_add_playlist.dart';
import 'package:masinqo/pages/listener_album.dart';
import 'package:masinqo/pages/listener_playlist.dart';
import 'package:masinqo/pages/listener_profile.dart';
import 'package:masinqo/pages/login.dart';
import 'package:masinqo/pages/signup.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.listnerTheme,
        initialRoute: '/login',
        routes: {
          "/login": (context) => const LoginWidget(),
          "/signup": (context) => const SignupWidget(),
          "/artist": (context) => const ArtistHomePage(),
          "/listener": (context) => const ListenerWidget(),
          "/admin": (context) => const AdminLogin(),
          "/admin/home": (context) => const AdminHome(),
          "/listener/album": (context) => const AlbumWidget(),
          "/listener/playlist": (context) => const PlaylistWidget(),
          "/listener/profile": (context) => const ListenerProfile(),
          "/listener/new_playlist": (context) => AddPlaylistWidget(),
          "/artist/profile": (context) => const ArtistProfile(),
          "/artist/album": (context) => const ArtistsAlbumPage(),
        }),
  );
}
