import 'package:flutter/material.dart';
import 'package:masinqo/models/playlist.dart';
import 'package:masinqo/models/songs.dart';
import 'package:masinqo/widgets/listener_album_songtile.dart';

class AlbumTracksWidget extends StatelessWidget {
  const AlbumTracksWidget({
    super.key,
    required this.playlist,
    required this.onAdd,
  });

  final Playlist playlist;
  final Function() onAdd;

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
            return AlbumSongTileWidget(song: song, onAdd: this.onAdd);
          },
        ),
      ],
    );
  }
}
