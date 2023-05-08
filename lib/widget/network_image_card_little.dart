import 'package:flutter/material.dart';


class NetworkImageCardLittle extends StatelessWidget {
  String ImageURL;
  NetworkImageCardLittle({Key? key, required this.ImageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 66.5,
      child: Image.network(ImageURL,fit: BoxFit.fill,),

    );
  }
}
