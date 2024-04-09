import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/AppColors.dart';

class PlaylistButtonsWidget extends StatelessWidget {
  final dynamic Function() addController;
  final Function() editController;
  final dynamic Function() deleteController;

  const PlaylistButtonsWidget({
    super.key,
    required this.addController,
    required this.editController,
    required this.deleteController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: addController,
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
          onPressed: editController,
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
          onPressed: deleteController,
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
