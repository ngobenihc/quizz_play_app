import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DataLoad extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    upLoadData();
    super.onReady();
  }

  Future<void> upLoadData() async {
    //print("UpLoading dat........");
    //file and print path
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final paperjs = manifestMap.keys
        .where((path) =>
            path.startsWith("assets/Db/papers") && path.contains(".json"))
        .toList();
        List<
    for (var i in paperjs) {
      String paperContent = await rootBundle.loadString(i);
      print(paperContent);
    }

    //print(paperjs);
  }
}
