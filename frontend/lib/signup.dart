import 'package:flutter/material.dart';
import 'widgets/brand.dart';
import 'core/theme/AppColors.dart';
import 'widgets/custom_text_field.dart';

void main() {
  runApp(const SignUp());
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  _ArtistSignUpPageState createState() => _ArtistSignUpPageState();
}

class _ArtistSignUpPageState extends State<SignUp> {
  bool _isArtist = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/uncle.jpg'),
              fit: BoxFit.cover,
              opacity: 0.25,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // onPressed here
                    },
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Brand(),
                          const SizedBox(height: 12),
                          CustomTextField(
                            hintText: 'Username',
                            isArtist: _isArtist,
                          ),
                          const SizedBox(height: 12),
                          CustomTextField(
                            hintText: 'Email',
                            isArtist: _isArtist,
                          ),
                          const SizedBox(height: 12),
                          CustomTextField(
                            hintText: 'Password',
                            isArtist: _isArtist,
                          ),
                          const SizedBox(height: 12),
                          CustomTextField(
                            hintText: 'Confirm Password',
                            isArtist: _isArtist,
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isArtist = true;
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                        color: _isArtist
                                            ? const Color.fromARGB(255, 12, 144, 188)
                                            : Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Signup as an Artist',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: _isArtist
                                        ? const Color.fromARGB(255, 12, 144, 188)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isArtist = false;
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                        color: _isArtist
                                            ? Colors.white
                                            : Colors.purple,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Signup as a Listener',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: _isArtist
                                        ? Colors.white
                                        : Colors.purple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
