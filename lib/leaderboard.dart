library leaderboard;

import 'package:flutter/material.dart';
import 'package:leaderboard/podium.dart';
import 'package:leaderboard/utils/custom_circle_avatar.dart';
import 'package:leaderboard/utils/podium_position.dart';

export 'podium.dart';

class LeaderBoard extends StatelessWidget {
  final Color podiumColor;
  final double avatarRadius;
  final ImageProvider<Object>? firstAvatarImage;
  final ImageProvider<Object>? secondAvatarImage;
  final ImageProvider<Object>? thirdAvatarImage;

  const LeaderBoard({
    Key? key,
    required this.podiumColor,
    this.avatarRadius = 25,
    this.firstAvatarImage,
    this.secondAvatarImage,
    this.thirdAvatarImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 25,
                top: -90,
                child: CustomCircleAvatar(
                  radius: avatarRadius,
                  backgroundImage: firstAvatarImage,
                ),
              ),
              Positioned(
                left: 112,
                top: -120,
                child: CustomCircleAvatar(
                  radius: avatarRadius,
                  backgroundImage: secondAvatarImage,
                ),
              ),
              Positioned(
                left: 200,
                top: -70,
                child: CustomCircleAvatar(
                  radius: avatarRadius,
                  backgroundImage: thirdAvatarImage,
                ),
              ),
              Container(),
              Positioned(
                left: 00,
                top: -20,
                child: Podium(
                  color: podiumColor,
                  position: Position.second,
                  height: 120,
                  width: 120,
                ),
              ),
              Positioned(
                left: 160,
                top: 0,
                child: Podium(
                  color: podiumColor,
                  position: Position.third,
                  height: 100,
                  width: 120,
                ),
              ),
              Positioned(
                left: 90,
                top: -50,
                child: Podium(
                  color: podiumColor,
                  position: Position.first,
                  height: 150,
                  width: 98,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
