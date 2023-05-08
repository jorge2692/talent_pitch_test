import 'package:flutter/material.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';

class initialScreen extends StatefulWidget {
  const initialScreen({Key? key}) : super(key: key);

  @override
  State<initialScreen> createState() => _initialScreenState();
}

class _initialScreenState extends State<initialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NullDataNavigation(namePages: 'Inicio', NumberIcon: 0xf107,),
    );
  }
}