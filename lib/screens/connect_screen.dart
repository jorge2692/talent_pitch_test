import 'package:flutter/material.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';

class connectScreen extends StatefulWidget {
  const connectScreen({Key? key}) : super(key: key);

  @override
  State<connectScreen> createState() => _connectScreenState();
}

class _connectScreenState extends State<connectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NullDataNavigation(namePages: 'Conéctate', NumberIcon: 0xf26a,),
    );
  }



}

