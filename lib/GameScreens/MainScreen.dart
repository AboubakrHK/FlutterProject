import 'package:app/screens/BaseWidget.dart';
import 'package:app/screens/utils/Background.dart';
import 'package:flutter/cupertino.dart';

class MainScreen extends BaseWidget {
  Background _background;

  MainScreen() {
    _background = Background("game_background_1.png");
  }
  void resize(Size size) {}
  void render(Canvas canvas) {}
  void update() {}
}
