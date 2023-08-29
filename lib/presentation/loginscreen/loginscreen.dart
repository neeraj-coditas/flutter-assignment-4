import 'package:ajheryuk/presentation/welcomescreen/welcomescreen.dart';
import 'package:ajheryuk/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ajheryuk/presentation/homescreen/homescreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36.0),
              child: Image.asset('assets/logo.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 56,
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'Fullname',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 20, top: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 56,
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 20, top: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 56,
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  minimumSize: const Size(double.infinity, 56.0),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      height: 2.0,
                      width: 150.0,
                      color: Colors.grey[300],
                    ),
                  ),
                  Text('or'),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 24, 16),
                    child: Container(
                      height: 2.0,
                      width: 150.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(16.0, 28.0, 24.0, 16),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image(image: AssetImage('assets/facebook.png')),
                  label: const Text(
                    'Log in with facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      minimumSize: const Size(double.infinity, 48.0)),
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 0.0, 24.0, 16),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Image(image: AssetImage('assets/google.png')),
                label: const Text(
                  'Log in with Google',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    minimumSize: const Size(double.infinity, 48.0)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                'By signing up you accept the Terms of Service and Privacy Policy',
                textAlign: TextAlign.center,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
