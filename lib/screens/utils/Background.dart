import 'package:app/screens/BaseWidget.dart';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';

class Background extends BaseWidget {
  SpriteComponent _bgsprite;

  Background(String src) {
    _bgsprite = SpriteComponent.fromSprite(0, 0, Sprite(src));
  }

  void render(Canvas canvas) {
    _bgsprite.render(canvas);
  }

  void resize(Size size) {
    _bgsprite.width = size.width;
    _bgsprite.height = size.height;
  }

  void update() {}
}
