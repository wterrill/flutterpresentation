import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide();

  @override
  Widget build(BuildContext context) {
    return const TitleScreenTemplate(
      title: 'Show me flutter, dammit!',
      subtitle: 'William Terrill, Mobile App Developer',
    );
  }
}
