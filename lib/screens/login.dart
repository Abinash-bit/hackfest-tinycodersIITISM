import 'package:eatit/config/config.dart';
import 'package:eatit/widgets/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScreen(image: AppImages.loginIllus, children: [
      const Text(
        'Login As',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 16),
      TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          hintText: 'Event Host',
          hintStyle: const TextStyle(color: Colors.white54),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.bgPrimary, width: 2),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.bgPrimary, width: 2),
              borderRadius: BorderRadius.circular(12)),
        ),
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      const SizedBox(height: 16),
      TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          hintText: 'NGO',
          hintStyle: const TextStyle(color: Colors.white54),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.bgPrimary, width: 2),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.bgPrimary, width: 2),
              borderRadius: BorderRadius.circular(12)),
        ),
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      const SizedBox(height: 24),
      TextButton(
        onPressed: () {
          context.push('/home');
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: AppColors.bgPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text(
            'Get Started',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    ]);
  }
}
