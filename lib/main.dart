import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/presentation/splash_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FruitsMarketApp());
}

class FruitsMarketApp extends StatelessWidget {
  const FruitsMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
