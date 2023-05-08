import 'package:flutter/material.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';

class profileScreen extends StatefulWidget {


  const profileScreen({Key? key}) : super(key: key);
  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NullDataNavigation(namePages: 'Perfil del aspirante', NumberIcon: 0xe61e,),
    );
  }



}