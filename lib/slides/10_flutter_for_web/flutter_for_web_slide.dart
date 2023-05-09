import 'dart:math';

import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../common/web_browser_dialog.dart';
import '../../templates/templates.dart';

class FlutterForWebSlide extends StatefulWidget {
  const FlutterForWebSlide();

  @override
  State<FlutterForWebSlide> createState() => _FlutterForWebSlideState();
}

class _FlutterForWebSlideState extends State<FlutterForWebSlide>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _rotateAnimation = Tween(begin: 0.0, end: pi * 2).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  void _rotate() =>
      _controller.isCompleted ? _controller.reverse() : _controller.forward();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.displayMedium?.copyWith(
          color: Colors.white,
          height: 1.5,
        );

    return Transform.rotate(
      angle: _rotateAnimation.value,
      child: SplitScreenTemplate(
        title: 'Flutter for Web',
        leftChild: Column(
          children: [
            const BulletList(
              items: [
                'Stable since March, 2021',
                'Just compile the existing Flutter code and run on Web!',
                'Works as SPA',
                'HTML vs CanvasKit rendering',
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\u2022', style: textStyle),
                const SizedBox(width: 8.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => const WebBrowserDialog(
                          url: 'https://flutterplasma.dev/',
                        ),
                      );
                    },
                    child: Text(
                      'Video or Flutter Magic?',
                      style: textStyle?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: _rotate,
              child: const Text(
                'Web rotate',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        rightChild: Image.asset('assets/images/flutter_web_architecture.png'),
        leftFlex: 2,
        rightFlex: 3,
      ),
    );
  }
}
