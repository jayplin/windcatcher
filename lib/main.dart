// flutter and ui libraries
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

// presentational widgets
import 'pages/TodosPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'R',
      home: TodosPage(),
    );
  }
}
