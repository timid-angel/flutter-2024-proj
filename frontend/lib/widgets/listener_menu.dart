import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: const Color.fromARGB(235, 0, 0, 0),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/user.png",
                    height: 100,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Username",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.edit_outlined,
                color: Colors.white,
              ),
              title: const Text(
                "Profile Management",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              title: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
