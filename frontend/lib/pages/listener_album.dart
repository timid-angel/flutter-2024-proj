import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_colors.dart';
import 'package:masinqo/models/albums.dart';
import 'package:masinqo/widgets/listener_album_albumart.dart';
import 'package:masinqo/widgets/listener_album_headline.dart';
import 'package:masinqo/widgets/listener_album_songlist.dart';
import 'package:masinqo/widgets/listener_appbar.dart';

class AlbumWidget extends StatelessWidget {
  final Album album;
  const AlbumWidget({
    super.key,
    required this.album,
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
            const ListenerAppbar(),
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
                  AlbumArt(deviceWidth: deviceWidth, albumArt: album.albumArt),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                    child: Column(
                      children: [
                        AlbumHeadlineWidget(album: album),
                        const Divider(height: 30, thickness: 2),
                        AlbumTracksWidget(album: album, onAdd: () {}),
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
