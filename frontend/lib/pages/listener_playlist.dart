import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/AppColors.dart';
import 'package:masinqo/models/playlist.dart';
import 'package:masinqo/widgets/listener_playlist_albumart.dart';
import 'package:masinqo/widgets/listener_playlist_buttons.dart';
import 'package:masinqo/widgets/listener_playlist_headline.dart';
import 'package:masinqo/widgets/listener_playlist_songlist.dart';

class PlaylistWidget extends StatelessWidget {
  final Playlist playlist;
  const PlaylistWidget({
    super.key,
    required this.playlist,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) {
          return [
            SliverAppBar(
              leadingWidth: 65,
              backgroundColor: const Color.fromARGB(0, 238, 233, 233),
              elevation: 0,
              scrolledUnderElevation: 0.0,
              pinned: false,
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
              title: Text(
                'Masinqo',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: AppColors.fontColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 32,
                    ),
              ),
            ),
          ];
        },
        body: Stack(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight,
              decoration: const BoxDecoration(
                  gradient: AppColors.slantedPurpleGradient),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  PlaylistAlbumArt(
                      deviceWidth: deviceWidth, playlist: playlist),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                    child: Column(
                      children: [
                        PlaylistHeadlineWidget(playlist: playlist),
                        PlaylistButtonsWidget(
                          addController: () {},
                          editController: () {},
                          deleteController: () {},
                        ),
                        const Divider(height: 30, thickness: 2),
                        PlaylistTracksWidget(playlist: playlist),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}
