import 'package:flutter/material.dart';
import 'package:fruits_market/features/onBoarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          title: 'E Shopping',
          subTitle: 'Explore Top Organic Fruits & Grap them',
          image: 'assets/images/onboarding1.png',
        ),
        PageViewItem(
          title: 'Delivery on the way',
          subTitle: 'Got your Order by Speed Delivery',
          image: 'assets/images/onboarding2.png',
        ),
        PageViewItem(
          title: 'Delivery Arrived',
          subTitle: 'Order Arrived at your Place',
          image: 'assets/images/onboarding3.png',
        ),
      ],
    );
  }
}
