import 'package:flutter/material.dart';

class ListenerFavorites extends StatelessWidget {
  const ListenerFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(1.0),
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
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
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
                      const SizedBox(
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
                  padding: const EdgeInsets.only(bottom: 16),
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
                      const SizedBox(
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
                  padding: const EdgeInsets.only(bottom: 16),
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
                      const SizedBox(
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
                  padding: const EdgeInsets.only(bottom: 16),
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
                      const SizedBox(
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
