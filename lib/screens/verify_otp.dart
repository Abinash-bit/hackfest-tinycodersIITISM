import 'package:eatit/config/config.dart';
import 'package:eatit/widgets/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:go_router/go_router.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScreen(image: AppImages.otpIllus, children: [
      const Text(
        'Verify with OTP sent to 8658 XXXXXX',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 16),
      Pinput(
        length: 6,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        showCursor: true,
        scrollPadding: const EdgeInsets.only(bottom: 80),
      ),
      const SizedBox(height: 24),
      TextButton(
        onPressed: () {
          context.push('/login');
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
            'Continue',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      const SizedBox(height: 24),
      const Text('Didn’t recieve it? Retry in 00:69',
          style: TextStyle(fontSize: 12, color: Colors.grey))
    ]);
  }
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(
      fontSize: 20, color: AppColors.bgPrimary, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.bgPrimary),
    borderRadius: BorderRadius.circular(10),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: const Color.fromARGB(50, 244, 241, 195),
  ),
);
