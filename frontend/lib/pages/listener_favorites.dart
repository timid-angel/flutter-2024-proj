import 'package:flutter/material.dart';
import 'package:masinqo/models/albums.dart';
import 'package:masinqo/widgets/listener_home_album.dart';

class ListenerFavorites extends StatelessWidget {
  const ListenerFavorites({
    super.key,
    required this.favorites,
  });

  final List<Album> favorites;

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
                "Favorites",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: favorites.length,
                itemBuilder: (context, index) =>
                    ListenerHomeAlbumCard(album: favorites[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
