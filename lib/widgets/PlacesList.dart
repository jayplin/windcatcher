// flutter and ui libraries
import 'package:flutter/material.dart';
// amplify model provider (should have been generated for you)
import '../models/ModelProvider.dart';
// presentational widgets
import 'PlaceItem.dart';

class PlacesList extends StatelessWidget {
  final List<Todo> todos;

  PlacesList({required this.todos});

  @override
  Widget build(BuildContext context) {
    return todos.length >= 1
        ? ListView(
            padding: EdgeInsets.all(8),
            children: todos.map((todo) => PlaceItem(todo: todo)).toList())
        : Center(child: Text('Tap button below to add a todo!'));
  }
}
