import 'package:flutter/material.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';

class PitchScreen extends StatelessWidget {
  const PitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NullDataNavigation(namePages: 'Pitch Talent', numberIcon: 0xf1c9,),
    );
  }
}
