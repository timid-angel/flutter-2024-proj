import 'package:flutter/material.dart';
import 'package:masinqo/data/album_data.dart';
import './widgets/artist_drawer.dart';
import './widgets/artist_CreateAlbumModal.dart';
import './widgets/artist_AppBar.dart';
import './widgets/artist_ProfileSection.dart';
import './widgets/artist_albumCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ArtistHomePage(),
    );
  }
}

class ArtistHomePage extends StatefulWidget {
  const ArtistHomePage({super.key});

  @override
  _ArtistHomePageState createState() => _ArtistHomePageState();
}

class _ArtistHomePageState extends State<ArtistHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: ArtistAppBar(scaffoldKey: _scaffoldKey),
      backgroundColor: Colors.black,
      endDrawer: const ArtistDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ArtistProfileSection(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.add_circle,
                      color: Color(0xFF39DCF3),
                      size: 30,
                    ),
                    onPressed: () {
                      showModal(context);
                    },
                  ),
                  const Text(
                    'Create Album',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            for (final album in albumData)
              AlbumCard(
                albumName: album.title,
                tracks: album.songs.length,
                genre: album.genre,
                releaseDate: album.date.year.toString(),
                description: album.description,
                imagePath: album.albumArt,
              ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CreateAlbumModal();
      },
    );
  }
}
