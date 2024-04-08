import 'package:flutter/material.dart';

class ListenerHome extends StatelessWidget {
  const ListenerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      margin: EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Albums",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 21),
            ),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: 1.5,
              crossAxisCount: 1,
              mainAxisSpacing: 18,
              children: [
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/beloved_paradise_jazz.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(bottom: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Album Name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Artist: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Genre: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Release Date",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Description: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/gkmc.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(bottom: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Album Name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Artist: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Genre: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Release Date",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Description: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/mr_morale.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(bottom: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Album Name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Artist: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Genre: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Release Date",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Description: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/sample_album_art/hearts_aglow.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(bottom: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Album Name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Artist: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Genre: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Release Date",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                            Text(
                              "Description: ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 225, 54, 255),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
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
