
import 'dart:typed_data';

import 'package:app/GameScreens/ScreenManager.dart';
import 'package:app/XDGooglePixel51.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:sensors/sensors.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(HelloWorld());

  var _location =
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  print(_location.toString());
  /*accelerometerEvents.listen((AccelerometerEvent event) {
    print(event);
  });
  // [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]

  userAccelerometerEvents.listen((UserAccelerometerEvent event) {
    print(event);
  });
  // [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]

  gyroscopeEvents.listen((GyroscopeEvent event) {
    print(event);
  });
  // [GyroscopeEvent (x: 0.0, y: 0.0, z: 0.0)]*/
}

class HelloWorld extends StatefulWidget {
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  ArCoreController arCoreController;
  ArCoreNode node;
  ArCorePlane plane;
  static int redZoneIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
          enableUpdateListener: true,
          enableTapRecognizer: true,
        ),
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onPlaneDetected = _onPlaneDetectedHandler;
    arCoreController.onPlaneTap = _onPlaneTapHandler;
    arCoreController.onNodeTap = (name) => _onTapHandler(name);
    //_addSphere(arCoreController);
    //_addCube(arCoreController);
  }
  void _onTapHandler(String name) {
    arCoreController.removeNode(nodeName: name);
  }
  _onPlaneDetectedHandler(ArCorePlane _plane) {
    plane = _plane;
  }
  _onPlaneTapHandler(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;
    final material = ArCoreMaterial(
      color: Color(0x44FF0000),
      metallic: 0,
      reflectance: 0,
      roughness: 1,
    );
    final cylindre = ArCoreCylinder(
      materials: [material],
      radius: 0.08,
      height: 0.4,
    );
    redZoneIndex++;
    final _node = ArCoreNode(
      name: "redZone"+redZoneIndex.toString(),
      shape: cylindre,
        position: plane.centerPose.translation,
    );
    arCoreController.addArCoreNodeWithAnchor(_node);
//**********************************************************
    final _Node = ArCoreReferenceNode(
      name: 'Toon',
      object3DFileName: 'model.sfb',
      scale: vector.Vector3(0.8,0.8,0.8),
      position: plane.centerPose.translation,
      rotation: plane.centerPose.rotation,
    );
    //arCoreController.addArCoreNodeWithAnchor(_Node);
  }
//***********************************************************

  void _addSphere(ArCoreController controller) {
    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244));
    final sphere = ArCoreSphere(
      materials: [material],
      radius: 0.1,
    );
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -1.5),
    );
    controller.addArCoreNode(node);
  }

  void _addCylindre(ArCoreController controller, ArCorePlane plane) {
    final material = ArCoreMaterial(
      color: Color(0x44FF0000),
      reflectance: 0,
      roughness: 0.4,
    );
    final cylindre = ArCoreCylinder(
      materials: [material],
      radius: 0.5,
      height: 0.3,
    );
    final _node = ArCoreNode(
      name: "zone",
      shape: cylindre,
      position: plane.centerPose.translation,
    );
    node = _node;
    controller.addArCoreNode(node);
  }

  void _addCube(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244),
      metallic: 1.0,
    );
    final cube = ArCoreCube(
      materials: [material],
      size: vector.Vector3(0.5, 0.5, 0.5),
    );
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(-0.5, 0.5, -3.5),
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
