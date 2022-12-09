library leaderboard;

import 'package:flutter/material.dart';
import 'package:leaderboard/podium.dart';
import 'package:leaderboard/utils/podium_position.dart';

export 'podium.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({Key? key}) : super(key: key);

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
              Container(),
              const Positioned(
                left: 00,
                top: -20,
                child: Podium(
                  color: Colors.red,
                  position: Position.second,
                  height: 120,
                  width: 120,
                ),
              ),
              const Positioned(
                left: 160,
                top: 0,
                child: Podium(
                  color: Colors.red,
                  position: Position.third,
                  height: 100,
                  width: 120,
                ),
              ),
              const Positioned(
                left: 90,
                top: -50,
                child: Podium(
                  color: Colors.redAccent,
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
