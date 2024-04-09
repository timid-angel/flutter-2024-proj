import 'package:flutter/material.dart';
import 'package:masinqo/models/songs.dart';

class PlaylistSongTileWidget extends StatelessWidget {
  const PlaylistSongTileWidget({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            width: deviceWidth * 0.14,
            height: deviceWidth * 0.14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(song.album.albumArt),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth * 0.6,
                child: Text(
                  song.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18,
                      ),
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.6,
                child: Text(
                  song.album.artist.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
