import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final Rx<Color?> containerColor = Colors.blue[200].obs;
  colorButtonController() {
    containerColor.value = Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }
}
