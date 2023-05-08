import 'package:flutter/material.dart';


class NetworkImageCardLittle extends StatelessWidget {
  final String imageURL;
  const NetworkImageCardLittle({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 66.5,
      child: Image.network(imageURL,fit: BoxFit.fill,),

    );
  }
}
