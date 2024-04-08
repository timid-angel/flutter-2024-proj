import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/AppColors.dart';
import 'package:masinqo/models/playlist.dart';

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 65,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: AppColors.grayAppbarGradient,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        title: Text(
          'Masinqo',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.grey[50],
                fontWeight: FontWeight.w300,
                fontSize: 32,
              ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 0.4 * deviceHeight,
            width: deviceWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(playlist.songs[1].album.albumArt),
              ),
            ),
          )
        ],
      ),
      endDrawer: const Drawer(),
    );
  }
}
