import 'package:flutter/material.dart';

class AdminArtistMGT extends StatelessWidget {
  const AdminArtistMGT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 48,
                    height: 48,
                  ),
                ),
                const SizedBox(width: 1),
                const Text(
                  'Masinqo',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 125.0),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {}, // TODO: Search implementation coming up
                    tooltip: 'Search',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Artists',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 1; i <= 10; i++)
                    Container(
                      child: ListTile(
                        minLeadingWidth: 72,
                        minVerticalPadding: 20,
                        leading: const CircleAvatar(
                          foregroundImage: AssetImage(
                            'assets/images/user.png',
                          ),
                        ),
                        title: Text('Artist $i'),
                        textColor: Colors.white,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.block),
                              onPressed: () {},
                              tooltip: 'Ban',
                              color: Colors.yellow,
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {},
                              tooltip: 'Delete',
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
