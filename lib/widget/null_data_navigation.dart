import 'package:flutter/material.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';

class NullDataNavigation extends StatelessWidget {
  String namePages;
  int NumberIcon;

  NullDataNavigation({Key? key, required this.namePages, required this.NumberIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.people_alt_outlined, size: 60,color: MyColors.primaryOpacityColorTwo,),
          Icon(IconData(NumberIcon, fontFamily: 'MaterialIcons'),size: 60, color: MyColors.primaryOpacityColor,),
          SizedBox(height: 5,),
          Text(namePages, style: TextStyle(color: Colors.grey, fontSize: 20),),
          SizedBox(height: 7,),
          Text('No tienes informacion en la categoria selecciona', style: TextStyle(color: MyColors.secondColor, fontSize: 11, fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
