import 'package:flutter/material.dart';
import 'package:masinqo/models/albums.dart';
import 'package:masinqo/pages/listener_album.dart';
import 'package:masinqo/widgets/listener_home_album.dart';

class ListenerHome extends StatelessWidget {
  const ListenerHome({
    super.key,
    required this.albums,
  });

  final List<Album> albums;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                "Albums",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: albums.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlbumWidget(album: albums[index]),
                      ),
                    );
                  },
                  child: ListenerHomeAlbumCard(
                    album: albums[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
