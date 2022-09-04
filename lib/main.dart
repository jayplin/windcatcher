// flutter and ui libraries
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// presentational widgets
import 'pages/TodosPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Windcatcher',
      home: TodosPage(),
    );
  }
}
