import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:screva/app/constant/app.assets.dart';
import 'package:screva/app/constant/app.colors.dart';
import 'package:screva/app/routes/app.routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future _initiateCache() async {
    {
      Navigator.of(context).pushNamed(AppRouter.homeRoute);
    }
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 3), _initiateCache);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackPearl,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.onBoardingOne),
            LoadingAnimationWidget.dotsTriangle(
              color: AppColors.orange,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
