import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  const Brand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 135,
        ),
        const SizedBox(width: 10),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'Masinqo',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
