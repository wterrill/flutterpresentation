import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterConceptsSlide extends StatefulWidget {
  const FlutterConceptsSlide();

  @override
  _FlutterConceptsSlideState createState() => _FlutterConceptsSlideState();
}

class _FlutterConceptsSlideState extends State<FlutterConceptsSlide> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'c1xLMaTUWCY',
      // params: const YoutubePlayerParams(
      //   startAt: Duration(minutes: 0, seconds: 0),
      //   endAt: Duration(minutes: 16, seconds: 22),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'How does Flutter work?',
      leftChild: const BulletList(
        items: [
          'High-performance rendering engine',
          'Takes charge of every pixel on the screen',
          'Flutter - declarative framework',
          'Widget - a unit of composition',
          'Lotsa help!'
        ],
      ),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '"Widget of the week"',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
          const SizedBox(height: 16.0),
          YoutubePlayerIFrame(controller: _controller),
          const SizedBox(height: 16.0),
          Text(
            'extensive video snippets on layout widgets',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
