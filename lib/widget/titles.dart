import 'package:flutter/material.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';

class Titles extends StatelessWidget {

  String Titulo;

  Titles({Key? key, required this.Titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
        child: Align(
          alignment: Alignment(-1,0),
          child: Text(Titulo, style: TextStyle(color: MyColors.primaryColor, fontSize: 20,fontWeight: FontWeight.bold )),
        )
    );
  }
}
