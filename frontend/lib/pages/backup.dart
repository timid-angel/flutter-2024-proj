import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/AppColors.dart';
import 'package:masinqo/models/playlist.dart';
import 'package:masinqo/models/songs.dart';
import 'package:masinqo/widgets/listener_playlist_buttons.dart';

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
      body: Stack(
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: deviceHeight * 0.75,
              decoration: const BoxDecoration(
                gradient: AppColors.grayBodyGradient,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0.35 * deviceHeight, 0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          playlist.name,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          "${playlist.songs.length} tracks",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite,
                      color: AppColors.listener2,
                      size: 35,
                    ),
                  ],
                ),
                PlaylistButtonsWidget(
                  addController: () {},
                  editController: () {},
                  deleteController: () {},
                ),
                PlaylistTracksWidget(playlist: playlist),
              ],
            ),
          ),
        ],
      ),
      endDrawer: const Drawer(),
    );
  }
}

class PlaylistTracksWidget extends StatelessWidget {
  const PlaylistTracksWidget({
    super.key,
    required this.playlist,
  });

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tracks',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Container(
          height: 400,
          child: ListView.builder(
            itemCount: playlist.songs.length,
            itemBuilder: (context, idx) {
              Song song = playlist.songs[idx];
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Image.asset(
                      song.album.albumArt,
                      width: 70,
                    ),
                    Column(
                      children: [
                        Text(song.name),
                        Text(
                          song.album.artist.name,
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
