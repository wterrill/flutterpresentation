import 'package:flutter/material.dart';

import 'slides/slides_page.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Let me introduce you to Flutter',
      debugShowCheckedModeBanner: false,
      home: SlidesPage(),
    );
  }
}
