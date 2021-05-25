import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDGooglePixel51 extends StatelessWidget {
  _onpressed() {
    print("pressed !");
  }

  XDGooglePixel51({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffb5dd0),
      body: Stack(
        children: <Widget>[
          ElevatedButton(
              onPressed: _onpressed,
              child: Pinned.fromPins(
                Pin(start: 93.0, end: 92.0),
                Pin(size: 57.0, middle: 0.4005),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xff5d07b2),
                        const Color(0xffd46abf)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              )),
          Pinned.fromPins(
            Pin(start: 93.0, end: 92.0),
            Pin(size: 57.0, middle: 0.4005),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff5d07b2), const Color(0xffd46abf)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 83.0, end: 83.0),
            Pin(size: 57.0, middle: 0.5365),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff5d07b2), const Color(0xffd46abf)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 182.0, middle: 0.5024),
            Pin(size: 57.0, middle: 0.6725),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff5d07b2), const Color(0xffd46abf)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 51.0, middle: 0.5),
            Pin(size: 43.0, middle: 0.4022),
            child: Text(
              'Play',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 25,
                color: const Color(0xffdfec2a),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 91.0, middle: 0.5),
            Pin(size: 43.0, middle: 0.5359),
            child: Text(
              'Options',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 29,
                color: const Color(0xffdfec2a),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 86.0, middle: 0.5016),
            Pin(size: 43.0, middle: 0.6696),
            child: Text(
              'Credits',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 29,
                color: const Color(0xffdfec2a),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
