import 'package:flutter/material.dart';
import 'package:ajheryuk/presentation/loginscreen/loginscreen.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ajher',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.redAccent)),
              Text('yuk',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 0),
            child: Text('Welcome to Ajheryuk',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
                'Best and popular apps for live education course from anything',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(16.0, 64.0, 16.0, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                minimumSize: const Size(double.infinity, 48.0),
              ),
              child: const Text('Get started',
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
