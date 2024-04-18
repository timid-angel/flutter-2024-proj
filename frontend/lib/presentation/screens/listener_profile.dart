import 'package:flutter/material.dart';
import 'package:masinqo/core/theme/app_colors.dart';

class ListenerProfile extends StatefulWidget {
  const ListenerProfile({super.key});

  @override
  ListenerProfileState createState() => ListenerProfileState();
}

class ListenerProfileState extends State<ListenerProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildProfileImage(),
              const SizedBox(height: 5),
              const Text(
                'Username',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 238, 197, 255),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(height: 45),
              sectionTitle("Change Username"),
              RoundedInputField(placeholder: "Enter new username"),
              const SizedBox(height: 2),
              RoundedInputField(placeholder: "Enter new Email"),
              const SizedBox(height: 20),
              sectionTitle("Change Password"),
              const SizedBox(height: 10),
              RoundedInputField(placeholder: "Enter new password"),
              const SizedBox(height: 2),
              RoundedInputField(placeholder: "Confirm new Password"),
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
      ),
    );
  }

  Widget _buildProfileImage() {
    return Stack(
      children: [
        Container(
          width: 130,
          height: 130,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/user.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String placeholder;

  const RoundedInputField({Key? key, required this.placeholder})
      : super(key: key);

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
