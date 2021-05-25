import 'dart:ffi';

import 'package:app/GameScreens/MainScreen.dart';
import 'package:app/screens/BaseWidget.dart';
import 'package:flame/game/game.dart';
import 'package:flutter/cupertino.dart';

ScreenManager screenManager = ScreenManager();

class ScreenManager extends Game {
  BaseWidget _mainScreen;

  Function _fn;

  Size size = Size(0, 0);

  ScreenManager() {
    _fn = _init;
  }

  void resize(Size size) {
    this.size = size;
    _mainScreen.resize(size);
  }

  void render(Canvas canvas) {
    _mainScreen?.render(canvas);
  }

  void update(double t) {
    _fn();
  }

  Void _init() {
    _fn = _update;
    _mainScreen = new MainScreen();
  }

  void _update() {
    _mainScreen?.update();
  }
}
