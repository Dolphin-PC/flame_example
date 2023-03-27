import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame/sprite.dart';
import 'package:flame_example/widgets/ship.dart';
import 'package:flutter/animation.dart';

//32 128
class GameScreen extends FlameGame with TapDetector {
  @override
  void onTapDown(TapDownInfo info) {
    print(info.eventPosition.game);
  }

  @override
  Future<void> onLoad() async {
    final spriteSheet = SpriteSheet(
      image: await images.load('ship-sheet.png'),
      srcSize: Vector2(32.0, 32.0),
    );
    final spriteSize = Vector2(32.0, 32.0);

    final component1 = SpriteAnimationComponent(
      animation: spriteSheet.createAnimation(row: 0, stepTime: 0.1, to: 4, loop: true),
      scale: Vector2(2, 2),
      position: Vector2(100, 100),
      size: spriteSize,
    );

    add(component1);
  }
}
