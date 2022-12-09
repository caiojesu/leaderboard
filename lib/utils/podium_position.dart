enum Position { first, second, third }

extension PodiumPositionExtension on Position {
  String get name {
    switch (this) {
      case Position.first:
        return "1";
      case Position.second:
        return "2";
      case Position.third:
        return "3";
    }
  }
}
