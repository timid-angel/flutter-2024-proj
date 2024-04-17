import 'package:flutter/material.dart';
import 'package:masinqo/presentation/widgets/admin_header.dart';
import 'delete_confirmation_modal.dart';

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
            const AdminHeader(),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'Artists',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 1; i <= 10; i++)
                    ListTile(
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
                            onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return DeleteConfirmationDialog(
                                  title:'Are you sure you want to delete this Artist?',
                                  content:'This action will remove all of their information including their albums and songs.',
                                  onConfirm: () {
                                    Navigator.of(context).pop();
                                  },
                                );
                              },
                            );
                          },
                            tooltip: 'Delete',
                            color: Colors.red,
                          ),
                        ],
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
