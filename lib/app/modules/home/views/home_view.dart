import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelpiaRahesa'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Welcome to my flutter project',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/counter');
              },
              child: Text('Pindah ke Counter Page')
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/biodata');
              },
              child: Text('Pindah ke Biodata Page')
              ),
        ],
      ),
    );
  }
}
