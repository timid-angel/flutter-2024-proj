import 'package:flutter/material.dart';
import 'package:masinqo/widgets/modal_button.dart';
import 'package:masinqo/widgets/modal_heading.dart';
import 'package:masinqo/widgets/modal_textfield.dart';

class AddPlaylistWidget extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AddPlaylistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: ModalHeadingWidget(
                      icon: Icons.add_circle_outline,
                      title: "New Playlist",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ModalTextFieldWidget(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      controller: nameController,
                      validator: (val) {
                        if (val == null) {
                          return "This field can not be empty";
                        } else if (val.length <= 4) {
                          return "Playlist name can not be shorter than 5 characters";
                        }

                        return null;
                      },
                      hintText: "Playlist Name",
                      lineCount: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ModalTextFieldWidget(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      controller: descriptionController,
                      validator: (val) {
                        if (val == null) {
                          return "This field can not be empty";
                        } else if (val.length <= 4) {
                          return "Description name can not be shorter than 10 characters";
                        }

                        return null;
                      },
                      hintText: "Description",
                      lineCount: 5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ModalButtonWidget(
                          text: 'Create Playlist',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text('Playlist Created'),
                                ),
                              );
                            }
                          },
                          bgColor: Colors.transparent,
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
