import 'package:flutter/material.dart';
import 'package:talent_pitch_test/screens/connect_screen.dart';
import 'package:talent_pitch_test/screens/home_screen.dart';
import 'package:talent_pitch_test/screens/profile_screen.dart';
import 'package:talent_pitch_test/screens/top_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'connect': (BuildContext context) => const ConnectScreen(),
        'top': (BuildContext context) => const TopScreen(),
        'profile': (BuildContext context) => const ProfileScreen(),

      },
    );
  }
}
