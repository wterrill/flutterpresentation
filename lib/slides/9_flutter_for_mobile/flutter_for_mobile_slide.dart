import 'package:flutter/widgets.dart';
import 'package:web_browser/web_browser.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterForMobileSlide extends StatelessWidget {
  const FlutterForMobileSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Flutter for Mobile',
      leftChild: const BulletList(
        items: [
          'Android and iOS',
          'Native performance',
          'Platform-specific APIs access',
          'Add-to-app',
        ],
      ),
      carouselChildren: [
        Image.asset(
          'assets/images/flutter_architecture.png',
          scale: 0.75,
        ),
        Image.asset(
          'assets/images/platform_channels.png',
          scale: 0.75,
        ),
        const WebBrowser(
          initialUrl: 'https://mxotechvideogame.web.app/',
          javascriptEnabled: true,
          interactionSettings: WebBrowserInteractionSettings(
            topBar: null,
            bottomBar: null,
          ),
        ),
      ],
    );
  }
}
