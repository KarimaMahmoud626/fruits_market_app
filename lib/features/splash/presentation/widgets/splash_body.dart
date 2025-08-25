import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/features/onBoarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadingAnimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text(
            'Fruit Market',
            style: TextStyle(
              fontSize: 42,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image.asset('assets/images/splash_image.png'),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }
}
