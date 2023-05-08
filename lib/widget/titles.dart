import 'package:flutter/material.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';

class Titles extends StatelessWidget {

  final String title;

  const Titles({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
        child: Align(
          alignment: const Alignment(-1,0),
          child: Text(title, style: TextStyle(color: MyColors.primaryColor, fontSize: 20,fontWeight: FontWeight.bold )),
        )
    );
  }
}
