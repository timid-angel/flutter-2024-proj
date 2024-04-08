import 'package:flutter/material.dart';

class ListenerLibrary extends StatelessWidget {
  const ListenerLibrary({super.key});

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
            child: Row(
              children: [
                Text(
                  "Playlists",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 21),
                ),
                VerticalDivider(
                  width: 6,
                ),
                Icon(
                  Icons.add_circle_outline,
                  size: 22,
                  color: Color.fromARGB(255, 117, 79, 207),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisSpacing: 25,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Container(
                  height: 20,
                  width: 400,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/mr_morale.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/mr_morale.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text("data",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                              Text("10 Tracks",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 400,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/masterpiece.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/masterpiece.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text("data",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                              Text("10 Tracks",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 400,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/hearts_aglow.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/hearts_aglow.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text("data",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                              Text("10 Tracks",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 400,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/gkmc.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/gkmc.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text("data",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                              Text("10 Tracks",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 400,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2.5)),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/beloved_paradise_jazz.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/sample_album_art/beloved_paradise_jazz.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text("data",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                              Text("10 Tracks",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
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
