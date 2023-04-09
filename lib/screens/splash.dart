import 'package:eatit/config/config.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      context.go('/enter_phone');
    });

    return Scaffold(
      body: Center(
        child: Stack(
          children: const [
            Positioned(
              bottom: 100,
              left: 100,
              right: 100,
              child: Text('ver 1.0.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white24)),
            ),
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image(image: AppImages.eatItLogo, height: 50)),
          ],
        ),
      ),
    );
  }
}
