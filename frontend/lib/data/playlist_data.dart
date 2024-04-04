import 'package:masinqo/data/listener_data.dart';
import 'package:masinqo/data/songs_data.dart';
import 'package:masinqo/models/playlist.dart';
import 'package:masinqo/models/songs.dart';

List<Playlist> playlistData = [
  Playlist(
    name: "Car radio",
    creationDate: DateTime.now(),
    owner: listenerData[0],
    songs: <Song>[
      songData[0],
      songData[1],
      songData[2],
    ],
  ),
  Playlist(
    name: "My favorite rap songs",
    creationDate: DateTime.now(),
    owner: listenerData[1],
    songs: <Song>[
      songData[3],
      songData[4],
      songData[5],
    ],
  ),
  Playlist(
    name: "tub head audio",
    creationDate: DateTime.now(),
    owner: listenerData[2],
    songs: <Song>[
      ...songData,
      ...songData,
      ...songData,
    ],
  ),
  Playlist(
    name:
        "This is a very long play list name. This overflow for this title must be handled properly",
    creationDate: DateTime.now(),
    owner: listenerData[3],
    songs: <Song>[
      songData[6],
      songData[3],
      songData[1],
    ],
  ),
];
