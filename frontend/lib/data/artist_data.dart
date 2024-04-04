import 'package:masinqo/data/album_data.dart';
import 'package:masinqo/models/artists.dart';

List<Artist> artistData = [
  Artist(
    name: "Kendrick Lamar",
    email: "kdot@hotmail.com",
    password: "kdotnojnod",
    albums: [
      albumData[0],
      albumData[1],
    ],
    profilePicture: "assets/sample_profile_picture/kendrick_lamar.jpg",
  ),
  Artist(
    name:
        "Big Thief, The Biggest Thief of them All, maker of Dragon New Warm Mountain I Believe in You",
    email: "robbery@yahoo.com",
    password: "illbearealtoughcookie",
    albums: [
      albumData[2],
      albumData[3],
    ],
    profilePicture: "assets/sample_profile_picture/big_thief.jpg",
  ),
  Artist(
    name: "McKinely Dixon",
    email: "therealestdixon@jklk.com",
    password: "newm@odernjazzwave2321",
    albums: [
      albumData[4],
    ],
    profilePicture: "assets/sample_profile_picture/mckinley_dixon.jpg",
  ),
  Artist(
    name: "Weyes Blood",
    email: "weyesblood@gmail.com",
    password: "whyismyheartglowing",
    albums: [
      ...albumData,
    ],
    profilePicture: "assets/sample_profile_picture/weyes_blood.jpg",
  ),
];
