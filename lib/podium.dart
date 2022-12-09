import 'package:flutter/material.dart';

import 'package:leaderboard/utils/podium_position.dart';
import 'package:leaderboard/utils/surface_clipper.dart';

class Podium extends StatelessWidget {
  final Color color;
  final Position position;
  final double height;
  final double width;
  final double avatarRadius;

  const Podium({
    Key? key,
    required this.color,
    required this.position,
    required this.height,
    required this.width,
    this.avatarRadius = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipPath(
          clipper: SurfaceClipper(),
          child: Container(
            height: 15,
            width: width,
            color: lighten(color),
          ),
        ),
        Container(
          height: height,
          width: width,
          color: color,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              right: isSecondPosition ? 20 : 0,
              left: isThirdPosition ? 20 : 0,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                position.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  bool get isSecondPosition => position == Position.second;
  bool get isThirdPosition => position == Position.third;

  Color lighten(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }
}
