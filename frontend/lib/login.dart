import 'package:flutter/material.dart';
import 'widgets/brand.dart';
import 'widgets/background.dart';

void main() {
  runApp(const LogIn());
}

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);
  @override
  _ArtistLoginPageState createState() => _ArtistLoginPageState();
}

class _ArtistLoginPageState extends State<LogIn> {
  bool _isArtist = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BackgroundGradient(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text(
                      'Admin?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Brand(),
                          const SizedBox(height: 16),
                          TextField(
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.white),
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: _isArtist
                                      ? Color.fromARGB(255, 12, 144, 188)
                                      : Colors.purple,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: _isArtist
                                      ? Color.fromARGB(255, 12, 144, 188)
                                      : Colors.purple,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextField(
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.white),
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: _isArtist
                                      ? Color.fromARGB(255, 12, 144, 188)
                                      : Colors.purple,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: _isArtist
                                      ? Color.fromARGB(255, 12, 144, 188)
                                      : Colors.purple,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/resetPassword');
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
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isArtist = true;
                                  });
                                },
                                child: Text(
                                  'Login as an Artist',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: _isArtist
                                        ? Color.fromARGB(255, 12, 144, 188)
                                        : Colors.white,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                        color: _isArtist
                                            ? Color.fromARGB(255, 12, 144, 188)
                                            : Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isArtist = false;
                                  });
                                },
                                child: Text(
                                  'Login as a Listener',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: _isArtist
                                        ? Colors.white
                                        : Colors.purple,
                                  ),
                                ),
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(
                        //     // ArtistListenerSignup.,
                        //     // arguments: _isArtist,
                        //     );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          _isArtist
                              ? Color.fromARGB(255, 12, 144, 188)
                              : Colors.purple,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
