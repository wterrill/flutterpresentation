import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class AboutMeSlide extends StatelessWidget {
  const AboutMeSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'About me',
      leftChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BulletList(
            items: [
              'Software Engineer frontend / backend',
              'Using Flutter since v1.10.2 (currently 3.7.12)',
              'Mobile App Consultant',
              'Specialized in Flutter & Dart, but have used Swift, Objective-C Kotlin, Java extensively',
            ],
          ),
          Text(
            '* snuck some code in at Fjardaal!',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      rightChild: FractionallySizedBox(
        widthFactor: 0.5,
        child: Image.asset('assets/images/me.png'),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
