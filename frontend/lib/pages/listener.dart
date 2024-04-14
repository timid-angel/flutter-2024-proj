import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_colors.dart';
import 'package:masinqo/models/albums.dart';
import 'package:masinqo/models/playlist.dart';
import 'package:masinqo/widgets/listener_appbar.dart';
import 'package:masinqo/pages/listener_favorites.dart';
import 'package:masinqo/pages/listener_home.dart';
import 'package:masinqo/pages/listener_library.dart';
import 'package:masinqo/widgets/listener_menu.dart';
import 'package:masinqo/widgets/listener_tabs.dart';

class ListenerWidget extends StatelessWidget {
  const ListenerWidget({
    super.key,
    required this.albums,
    required this.favorites,
    required this.playlists,
  });

  final List<Album> albums;
  final List<Album> favorites;
  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.black,
        endDrawer: const MenuDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) {
            return [
              const ListenerAppbar(),
            ];
          },
          body: TabBarView(
            children: [
              ListenerHome(
                albums: albums,
              ),
              ListenerFavorites(
                favorites: favorites,
              ),
              ListenerLibrary(
                playlists: playlists,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
