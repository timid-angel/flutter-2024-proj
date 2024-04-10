import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/AppColors.dart';
import 'package:masinqo/models/albums.dart';
import 'package:masinqo/widgets/listener_appbar.dart';
import 'package:masinqo/pages/listener_favorites.dart';
import 'package:masinqo/pages/listener_home.dart';
import 'package:masinqo/widgets/listener_library.dart';
import 'package:masinqo/widgets/listener_menu.dart';
import 'package:masinqo/widgets/listener_tabs.dart';

class ListenerWidget extends StatelessWidget {
  const ListenerWidget({
    super.key,
    required this.albums,
    required this.favorites,
  });

  final List<Album> albums;
  final List<Album> favorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ListenerLibrary(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
