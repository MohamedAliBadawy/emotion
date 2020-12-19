


import 'package:Flutter_TM/home_page.dart';
import 'package:flutter/material.dart';

import 'package:camera/camera.dart';



List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }


  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      title: 'Teachable Machine with Flutter',
      home:HomePage(),
    )
  );
}



