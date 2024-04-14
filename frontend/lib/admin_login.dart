import 'package:flutter/material.dart';
import 'widgets/brand.dart';
import 'widgets/background.dart';
import 'widgets/text_field.dart';
import 'widgets/custom_elevated_button.dart';

void main() {
  runApp(const AdminLogin());
}

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundGradient(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Brand(),
                      const SizedBox(height: 16),
                      CustomTextField(hintText: 'Email'),
                      const SizedBox(height: 16),
                      CustomTextField(hintText: 'Password'),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/resetPassword');
                          },
                          child: const Text(
                            ' Forgot Password?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              CustomElevatedButton(onPressed: () {}, buttonText: 'Sign In'),
            ],
          ),
        ),
      ),
    );
  }
}
