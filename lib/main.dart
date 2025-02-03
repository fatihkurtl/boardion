import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boardion/screens/home.dart';
import 'package:boardion/controller/home_controller.dart';

void main() {
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boardion App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: const Color(0xFF262626)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
