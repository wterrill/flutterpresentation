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
        Image.asset('assets/images/apps/companies.png'),
        Image.asset('assets/images/apps/howmany.png'),
        Image.asset('assets/images/apps/google_assistant.png'),
        Image.asset('assets/images/apps/google_ads.png'),
        Image.asset('assets/images/apps/stadia.png'),
        Image.asset('assets/images/apps/ebay.png'),
        Image.asset('assets/images/apps/alibaba.png'),
        Image.asset('assets/images/apps/the_new_york_times.png'),
        Image.asset('assets/images/apps/reflectly.png'),
        Image.asset('assets/images/apps/insight_timer.png'),
        Image.asset('assets/images/apps/nubank.png'),
        Image.asset('assets/images/apps/philips.png'),
        Image.asset('assets/images/apps/realtor.png'),
        Image.asset('assets/images/apps/hamilton.png'),
      ],
      autoplay: true,
    );
  }
}
