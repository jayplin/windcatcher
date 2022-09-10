// flutter and ui libraries
import 'package:flutter/material.dart';

// presentational widgets
import 'pages/PlacesPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Windcatcher',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
      ),
      home: PlacesPage(),
    );
  }
}
