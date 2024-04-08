import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListenerFavorites extends StatelessWidget {
  const ListenerFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Favorites",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 21),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/hearts_aglow.png",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text("Album Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/beloved_paradise_jazz.png",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text("Album Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/gkmc.png",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text("Album Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/mr_morale.png",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text("Album Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
