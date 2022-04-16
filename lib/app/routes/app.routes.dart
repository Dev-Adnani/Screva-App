import 'package:flutter/material.dart';
import 'package:screva/presentation/screens/homeScreen/home.screen.dart';
import 'package:screva/presentation/screens/splashScreen/splash.screen.dart';
import 'package:screva/presentation/screens/videoCallScreen/videocall.screen.dart';

class AppRouter {
  static const String splashRoute = "/splash";
  static const String homeRoute = "/home";
  static const String videoRoute = "/video";

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const SplashScreen(),
          );
        }
      case videoRoute:
        {
          return MaterialPageRoute(
            builder: (context) => const VideoCallExp(),
          );
        }
      case homeRoute:
        {
          return MaterialPageRoute(
            builder: (_) => HomeScreen(),
          );
        }
      default:
        {
          return MaterialPageRoute(
            builder: (_) => HomeScreen(),
          );
        }
    }
  }
}
