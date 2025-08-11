import 'package:flutter/material.dart';

import 'dart:math' as math;

class RandomColor {
  static final _random = math.Random();
  static Color next() {
    return Color(_random.nextInt(0xFFFFFF)).withValues(alpha: 1.0);
  }
}
