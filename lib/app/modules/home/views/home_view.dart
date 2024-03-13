import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                final warna = controller.containerColor.value;
                return Container(
                  color: warna,
                  width: 200,
                  height: 100,
                );
              }),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              const Text('Tekan tombol di bawah untuk merubah warna box'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.colorButtonController();
                  },
                  child: const Text('Ubah'))
            ],
          ),
        ));
  }
}
