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

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) {
          return [
            SliverAppBar(
              leadingWidth: 65,
              backgroundColor: const Color.fromARGB(0, 238, 233, 233),
              elevation: 0,
              scrolledUnderElevation: 0.0,
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
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
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              PlaylistAlbumArt(deviceWidth: deviceWidth, playlist: playlist),
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
                    PlaylistTracksWidget(playlist: playlist),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}

class PlaylistAlbumArt extends StatelessWidget {
  const PlaylistAlbumArt({
    super.key,
    required this.deviceWidth,
    required this.playlist,
  });

  final double deviceWidth;
  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.7 * deviceWidth,
      width: 0.7 * deviceWidth,
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(playlist.songs[1].album.albumArt),
        ),
      ),
    );
  }
}

class PlaylistHeadlineWidget extends StatelessWidget {
  const PlaylistHeadlineWidget({
    super.key,
    required this.playlist,
  });

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: playlist.songs.length,
          itemBuilder: (context, idx) {
            Song song = playlist.songs[idx];
            return PlaylistSongTileWidget(song: song);
          },
        ),
      ],
    );
  }
}

class PlaylistSongTileWidget extends StatelessWidget {
  const PlaylistSongTileWidget({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
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
              Text(
                song.name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 18,
                    ),
              ),
              Text(
                song.album.artist.name,
              )
            ],
          )
        ],
      ),
    );
  }
}
