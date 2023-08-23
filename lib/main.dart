import 'package:flutter/material.dart';
import 'package:ajheryuk/presentation/welcomescreen/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => welcomescreen(),
        // '/screen2': (context) => Screen2(),
        // '/screen3': (context) => Screen3(),
        // '/screen4': (context) => Screen4(),
        // '/screen5': (context) => Screen5(),

      },
    );
  }
}


