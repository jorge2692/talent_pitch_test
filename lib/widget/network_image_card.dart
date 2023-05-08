import 'package:flutter/material.dart';

class NetworkImageCard extends StatelessWidget {

  final String imageNet;

  const NetworkImageCard({Key? key, required this.imageNet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      height: 133,
      child: Image.network(imageNet,fit: BoxFit.fill,)
    );
  }
}
