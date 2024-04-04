import 'package:masinqo/models/listener.dart';
import 'package:masinqo/models/songs.dart';

class Playlist {
  String name;
  DateTime creationDate;
  Listener owner;
  List<Song> songs;

  Playlist({
    required this.name,
    required this.creationDate,
    required this.owner,
    required this.songs,
  });
}
