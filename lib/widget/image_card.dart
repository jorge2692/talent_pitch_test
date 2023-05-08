import 'package:flutter/material.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';
import 'package:talent_pitch_test/widget/network_image_card.dart';
import 'package:talent_pitch_test/widget/network_image_card_little.dart';

class ImageCard extends StatelessWidget {
  final String name;
  final String match;
  final String link1;
  final String link2;
  final String link3;

  const ImageCard({Key? key, required this.name, required this.match, required this.link1, required this.link2, required this.link3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:  MainAxisAlignment.start,
        children: [
          Container(
            width: 138,
            height: 133,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.black26,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  Column(

                    children: [
                      Row(
                        children: [
                          NetworkImageCard(imageNet: link1,),
                          Column(
                            children: [
                              NetworkImageCardLittle(imageURL: link2),
                              NetworkImageCardLittle(imageURL: link3),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: MyColors.secondColor, //<-- SEE HERE
                      child: const Icon(Icons.play_circle_outline, color: Colors.white,size: 16,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),),
          const SizedBox(height: 8),
          Text(match,style: TextStyle(color: MyColors.primaryOpacityColor,  fontSize: 12, fontWeight: FontWeight.bold),),
        ],
      );
    }
  }

