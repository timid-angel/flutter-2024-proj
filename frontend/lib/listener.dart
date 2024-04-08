import 'package:flutter/material.dart';
import 'widgets/listener_menu.dart';
import 'widgets/listener_favorites.dart';
import 'widgets/listener_home.dart';
import 'widgets/listener_tabs.dart';
import 'widgets/listener_library.dart';
import 'widgets/listener_appbar.dart';

void main() {
  runApp(const Listener());
}

class Listener extends StatelessWidget {
  const Listener({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          endDrawer: MenuDrawer(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: ListenerAppbar(),
          ),
          body: TabBarView(
            children: [
              ListenerHome(),
              ListenerFavorites(),
              ListenerLibrary(),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            height: 55,
            child: Tabs(),
          ),
          backgroundColor: Color.fromARGB(255, 44, 44, 44),
        ),
      ),
    );
  }
}
