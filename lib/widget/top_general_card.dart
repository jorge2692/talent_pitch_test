import 'package:flutter/material.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';

class TopGeneralCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int icon;
  final String colorBack;
  final int colorIcon;
  const TopGeneralCard({Key? key, required this.title, required this.colorBack, required this.colorIcon, required this.icon, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(int.parse(colorBack)),
          ),
          child: Icon(IconData(icon, fontFamily: 'MaterialIcons'), color: Color(colorIcon)),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),),
                const SizedBox(height: 5),
                Text(subtitle,style: TextStyle(color: MyColors.primaryOpacityColor,  fontWeight: FontWeight.bold, fontSize: 12),),
              ],
            ),
          ),
        )
      ],

    );
  }
}

