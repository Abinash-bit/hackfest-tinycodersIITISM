import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const otpIllus = _Image('otp_illus.png');
  static const loginIllus = _Image('login_illus.png');
  static const eatItLogo = _Image('eatit_logo.png');
  static const avatar = _Image('avatar.png');
}
