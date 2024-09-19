import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning_app/view/home/home.dart';

import 'package:online_learning_app/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn It',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // home: const Home(),
    );
  }
}
