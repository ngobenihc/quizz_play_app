import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controllers/q_papers/up_load_data.dart';

class UploaderDataScreen extends StatelessWidget {
  UploaderDataScreen({super.key});

  DataLoad controller = Get.put(DataLoad());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("uploading")),
    );
  }
}
