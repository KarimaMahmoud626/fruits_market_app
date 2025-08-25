import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

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
    ).animate(animationController!)..addListener(() {
      setState(() {
        if (animationController!.isCompleted) {
          animationController?.repeat(reverse: true);
        }
      });
    });
    animationController?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Center(
          child: Opacity(
            opacity: fadingAnimation?.value,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 42,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Image.asset('assets/images/splash_image.png'),
      ],
    );
  }
}
