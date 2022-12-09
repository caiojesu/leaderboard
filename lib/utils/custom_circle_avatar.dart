import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double radius;
  final ImageProvider<Object>? backgroundImage;
  const CustomCircleAvatar({
    Key? key,
    required this.radius,
    this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey,
      backgroundImage: backgroundImage,
    );
  }
}
