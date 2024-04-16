import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:masinqo/core/theme/app_colors.dart';
import 'dart:io';

class ListenerProfile extends StatefulWidget {
  const ListenerProfile({super.key});

  @override
  ListenerProfileState createState() => ListenerProfileState();
}

class ListenerProfileState extends State<ListenerProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _profileImagePath = 'assets/sample_profile_picture/weyes_blood.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.listener2, width: 4),
                  ),
                  child: ClipOval(
                    child: _buildProfileImageWidget(),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: IconButton(
                    icon: const Icon(Icons.edit, color: AppColors.listener2),
                    onPressed: _pickProfileImage,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              'Weyes Blood',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 238, 197, 255),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(height: 25),
            const RoundedInputField(placeholder: "Enter new username"),
            const SizedBox(height: 2),
            const RoundedInputField(placeholder: "Enter new Email"),
            const SizedBox(height: 20),
            const Text(
              "Change password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const RoundedInputField(placeholder: "Enter new password"),
            const SizedBox(height: 2),
            const RoundedInputField(placeholder: "Confirm new Password"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.listener2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 75)
          ],
        ),
      ),
    );
  }

  void _pickProfileImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      setState(() {
        _profileImagePath = result.files.single.path!;
      });
    }
  }

  Widget _buildProfileImageWidget() {
    if (_profileImagePath.startsWith('assets/')) {
      return Image.asset(
        _profileImagePath,
        fit: BoxFit.cover,
      );
    } else {
      return Image.file(
        File(_profileImagePath),
        fit: BoxFit.cover,
      );
    }
  }
}

class RoundedInputField extends StatelessWidget {
  final String placeholder;

  const RoundedInputField({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.listener2, width: 1),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
