import 'package:flutter/material.dart';
import 'package:masinqo/artist.dart';
import 'package:masinqo/core/theme/app_colors.dart';
import 'package:masinqo/core/theme/app_theme_data.dart';
import 'package:masinqo/data/admin_data.dart';
import 'package:masinqo/data/album_data.dart';
import 'package:masinqo/data/artist_data.dart';
import 'package:masinqo/data/database.dart';
import 'package:masinqo/data/listener_data.dart';
import 'package:masinqo/data/playlist_data.dart';
import 'package:masinqo/data/songs_data.dart';
import 'package:masinqo/pages/admin_login.dart';
import 'package:masinqo/pages/listener.dart';
import 'package:masinqo/pages/signup.dart';
import 'package:masinqo/widgets/background.dart';
import 'package:masinqo/widgets/login_brand.dart';
import 'package:masinqo/widgets/login_options.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  LoginWidgetState createState() => LoginWidgetState();
}

class LoginWidgetState extends State<LoginWidget> {
  bool _isArtist = true;
  Database db = Database(
    admins: adminData,
    albums: albumData,
    artists: artistData,
    listeners: listenerData,
    playlists: playlistData,
    songs: songData,
  );

  void refreshState(bool newVal) {
    setState(() {
      _isArtist = newVal;
    });
  }

  void loginHandler() {
    if (!_isArtist) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.listnerTheme,
            home: ListenerWidget(
              albums: db.albums,
              favorites: db.listeners[2].favorites,
              playlists: db.playlists,
            ),
          ),
        ),
      );
    } else {
      // Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.listnerTheme,
            home: const ArtistHomePage(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminLogin()));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Admin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 17,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(22, 20, 22, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Brand(
                        text: 'Masinqo',
                        size: 50,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        style: const TextStyle(
                            color: AppColors.fontColor, fontSize: 17),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 15),
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: _isArtist ? 'Artist Email' : 'User email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _isArtist
                                  ? AppColors.artist2
                                  : AppColors.listener4,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _isArtist
                                  ? AppColors.artist2
                                  : AppColors.listener4,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        style: const TextStyle(
                            color: AppColors.fontColor, fontSize: 17),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 15),
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _isArtist
                                  ? AppColors.artist2
                                  : AppColors.listener4,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _isArtist
                                  ? AppColors.artist2
                                  : AppColors.listener4,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          LoginOptionButton(
                            isArtist: _isArtist,
                            parent: this,
                            primaryColor: AppColors.artist2,
                            buttonText: 'Login as an Artist',
                            toValue: true,
                          ),
                          LoginOptionButton(
                            isArtist: _isArtist,
                            parent: this,
                            primaryColor: AppColors.listener2,
                            buttonText: 'Login as a Listener',
                            toValue: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupWidget(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      foregroundColor: AppColors.fontColor),
                  child: const Text("Don't have an account?"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: loginHandler,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      _isArtist ? AppColors.artist2 : AppColors.listener4,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
