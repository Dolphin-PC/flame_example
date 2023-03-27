import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

import 'screens/game_screen.dart';

main() {
  runApp(
    GameWidget(
      game: GameScreen(),
    ),
  );
}
