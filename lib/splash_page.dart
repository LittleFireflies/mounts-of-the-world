import 'package:flutter/material.dart';

import 'colors.dart';
import 'mounts_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MountsApp(),
            ));
      },
    );

    return Container(
      color: mainColor,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
