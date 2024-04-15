import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isArtist;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.isArtist,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.white),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: isArtist ? Color.fromARGB(255, 12, 144, 188) : Colors.purple,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isArtist ? Color.fromARGB(255, 12, 144, 188) : Colors.purple,
            width: 2,
          ),
        ),
      ),
    );
  }
}
