import 'package:flutter/material.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({Key? key}) : super(key: key);

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NullDataNavigation(namePages: 'Conéctate', numberIcon: 0xf26a,),
    );
  }



}

