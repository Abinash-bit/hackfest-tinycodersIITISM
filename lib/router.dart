import 'package:eatit/screens/screen.dart';
import 'package:eatit/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/enter_phone',
        pageBuilder: (context, state) {
          return const MaterialPage(child: EnterPhone());
        }),
    GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        }),
    GoRoute(
        path: '/verify_otp',
        pageBuilder: (context, state) {
          return const MaterialPage(child: VerifyOTP());
        }),
    GoRoute(
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Login());
        }),
    GoRoute(
        path: '/home',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Home());
        }),
  ]);
}
