import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_colors.dart';
import './artist_delete_confirmation.dart';
import '../widgets/artist_add_song_modal.dart';
import 'listener_edit_playlist_modal.dart';

class PlaylistButtonsWidget extends StatelessWidget {
  final dynamic Function() addController;
  final Function() editController;
  final dynamic Function() deleteController;
  final String playlistName; 

  const PlaylistButtonsWidget({
    Key? key,
    required this.addController,
    required this.editController,
    required this.deleteController,
    required this.playlistName, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
           onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AddSongModal();
              },
            );
          },
          child: const Row(
            children: [
              Icon(
                Icons.add_circle_outline_rounded,
                color: AppColors.listener2,
              ),
              SizedBox(width: 2),
              Text(
                'Add Song',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return EditPlaylistModal(
                currentPlaylistName: playlistName,
              );
            },
          ).then((newPlaylistName) {
            if (newPlaylistName != null) {
              print('New Playlist Name: $newPlaylistName');

            }
          });
        },



          child: const Row(
            children: [
              Icon(
                Icons.edit,
                color: AppColors.listener2,
              ),
              SizedBox(width: 2),
              Text(
                'Edit',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        TextButton(
            onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return DeleteConfirmationDialog(
                  title: 'Are you sure you want to delete this playlist?',
                  content: '',
                  onConfirm: () {
                    Navigator.of(context).pop();
                  },
                );
              },
            );
          },
          child: const Row(
            children: [
              Icon(
                Icons.delete,
                color: Colors.red,
              ),
              SizedBox(width: 2),
              Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
