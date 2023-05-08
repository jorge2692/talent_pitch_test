import 'package:flutter/material.dart';

class NetworkImageCard extends StatelessWidget {

  String ImageNet;

  NetworkImageCard({Key? key, required this.ImageNet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 133,
      child: Image.network(ImageNet,fit: BoxFit.fill,)
    );
  }
}
