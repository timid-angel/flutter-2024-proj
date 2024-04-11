import 'package:flutter/material.dart';
import 'widgets/admin_listener_mgt.dart';
import 'widgets/admin_artist_mgt.dart';
import 'widgets/background.dart';
import 'widgets/admin_tabs.dart';

void main() {
  runApp(const AdminScreen());
}

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundGradient(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: TabBarView(
              children: [
                AdminArtistMGT(),
                AdminListenerMGT(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              height: 55,
              child: AdminTabs(),
            ),
          ),
        ),
      ),
    );
  }
}
