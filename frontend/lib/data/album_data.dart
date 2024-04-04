import 'package:masinqo/data/artist_data.dart';
import 'package:masinqo/data/songs_data.dart';
import 'package:masinqo/models/albums.dart';

List<Album> albumData = [
  Album(
    title: "Good Kid, m.A.A.d City",
    description: "The best rap album of all time",
    genre: "Rap",
    date: DateTime.now(),
    albumArt: "assets/sample_album_art/gkmc.jpg",
    artist: artistData[0],
    songs: [
      songData[0],
      songData[1],
    ],
  ),
  Album(
    title:
        "Mr. Morale & the Big Steppers. This is a very long album name, handle the overflow.",
    description:
        "The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time. The fifth best rap album of all time.",
    genre:
        "JAZZPOPRAPHIPHOPSOULFUNKPUNKROCKJAZZPOPRAPHIPHOPSOULFUNKPUNKROCKJAZZPOPRAPHIPHOPSOULFUNKPUNKROCK",
    date: DateTime.now(),
    albumArt: "assets/sample_album_art/mr_morale.png",
    artist: artistData[0],
    songs: [
      ...songData,
    ],
  ),
  Album(
    title: "Masterpiece",
    description: "A masterpiece? How ironic.",
    genre: "Indie Rock",
    date: DateTime.now(),
    albumArt: "assets/sample_album_art/masterpiece.jpg",
    artist: artistData[1],
    songs: [
      ...songData,
    ],
  ),
  Album(
    title: "Dragon New Warm Mountain I Believe in You",
    description: "A dragon? Where?",
    genre: "Indie Rock",
    date: DateTime.now(),
    albumArt: "assets/sample_album_art/dnwmitinu.png",
    artist: artistData[1],
    songs: [
      ...songData,
      ...songData,
    ],
  ),
  Album(
    title: "Beloved! Paradise! Jazz!",
    description: "I guess jazz isn't dead yet.",
    genre: "Modern Jazz",
    date: DateTime.now(),
    albumArt: "assets/sample_album_art/beloved_paradise_jazz.png",
    artist: artistData[2],
    songs: [
      songData[2],
      songData[3],
      songData[4],
      songData[5],
      songData[6],
    ],
  ),
  Album(
    title: "And in the Darkness, Hearts Aglow",
    description: "This is a description.",
    genre: "Chamber Pop",
    date: DateTime.now(),
    albumArt: "assets/sample_album_art/hearts_aglow.png",
    artist: artistData[3],
    songs: [
      ...songData,
    ],
  ),
];
