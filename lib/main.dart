import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_play_app/up_load_data_screen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  // options: DefaultFirebaseOptions.currentPlatform,
  //);
  runApp(GetMaterialApp(
    home: UploaderDataScreen(),
  ));
}
