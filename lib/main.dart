import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mounts of The World',
      home: SplashPage(),
    );
  }
}
