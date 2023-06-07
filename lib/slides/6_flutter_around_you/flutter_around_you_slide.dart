import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterAroundYouSlide extends StatelessWidget {
  const FlutterAroundYouSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      autoplayDelay: 8000,
      title: 'Flutter around you',
      leftChild: const BulletList(
        items: [
          'Google products - Google Ads, Google Pay, Google Nest Hub, Stadia',
          '500,000+ apps published to the App Store/Google Play Store',
          "BMW, NYT, Toyota, Ebay, Groupon",
        ],
      ),
      carouselChildren: [
        Image.asset('assets/images/companies.png'),
        Image.asset('assets/images/howmany.png'),
        Image.asset('assets/images/google_assistant.png'),
        Image.asset('assets/images/google_ads.png'),
        Image.asset('assets/images/stadia.png'),
        Image.asset('assets/images/ebay.png'),
        Image.asset('assets/images/alibaba.png'),
        Image.asset('assets/images/the_new_york_times.png'),
        Image.asset('assets/images/reflectly.png'),
        Image.asset('assets/images/insight_timer.png'),
        Image.asset('assets/images/nubank.png'),
        Image.asset('assets/images/philips.png'),
        Image.asset('assets/images/realtor.png'),
        Image.asset('assets/images/hamilton.png'),
      ],
      autoplay: true,
    );
  }
}
