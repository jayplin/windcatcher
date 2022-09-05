// flutter and ui libraries
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

// presentational widgets
import 'pages/TodosPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'R',
      home: TodosPage(),
    );
  }
}
