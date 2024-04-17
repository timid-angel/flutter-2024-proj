import 'package:flutter/material.dart';
import 'package:masinqo/models/playlist.dart';
import 'package:masinqo/models/songs.dart';
import 'package:masinqo/presentation/widgets/listener_playlist_songtile.dart';

class PlaylistTracksWidget extends StatelessWidget {
  const PlaylistTracksWidget({
    super.key,
    required this.playlist,
    required this.onDelete,
  });

  final Playlist playlist;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tracks',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 7, 0, 10),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: playlist.songs.length,
          itemBuilder: (context, idx) {
            Song song = playlist.songs[idx];
            return PlaylistSongTileWidget(
              song: song,
              onDelete: onDelete,
            );
          },
        ),
      ],
    );
  }
}
