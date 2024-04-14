import 'package:flutter/material.dart';
import 'package:masinqo/models/songs.dart';

class AlbumSongTileWidget extends StatelessWidget {
  const AlbumSongTileWidget({
    super.key,
    required this.song,
    required this.onAdd,
  });

  final Song song;
  final Function() onAdd;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                    width: deviceWidth * 0.5,
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
                    width: deviceWidth * 0.52,
                    child: Text(
                      song.album.artist.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),

              // IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle))
            ],
          ),
          PopupMenuButton(
            icon: const Icon(Icons.add_circle),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('Playlist 1')),
                const PopupMenuItem(child: Text('Playlist 2')),
                const PopupMenuItem(child: Text('Playlist 3')),
                const PopupMenuItem(child: Text('Playlist 4')),
              ];
            },
          ),
        ],
      ),
    );
  }
}
