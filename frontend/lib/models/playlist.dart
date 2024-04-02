import 'package:masinqo/models/songs.dart';

class Playlist {
  String name;
  DateTime datetime;
  List<Song> songs;

  Playlist({
    required this.name,
    required this.datetime,
    required this.songs,
  });
}
