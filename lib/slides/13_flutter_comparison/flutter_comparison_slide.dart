import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterComparisonSlide extends StatelessWidget {
  const FlutterComparisonSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Flutter vs React Native',
      leftChild: const BulletList(
        items: [
          'Skia vs JavaScript Bridge',
          'Dart versus JavaScript',
        ],
      ),
      carouselChildren: [
        Image.asset('assets/images/flutter_vs_rn/rn_architecture.png'),
        Image.asset('assets/images/flutter_vs_rn/google_trends.png'),
        Image.asset('assets/images/flutter_vs_rn/FvRN.png'),
      ],
    );
  }
}
