import 'package:flutter/material.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NullDataNavigation(namePages: 'Inicio', numberIcon: 0xf107,),
    );
  }
}