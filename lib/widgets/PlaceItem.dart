// flutter and ui libraries
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// amplify packages we will need to use
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
// amplify model provider (should have been generated for you)
import '../models/ModelProvider.dart';

class PlaceItem extends StatelessWidget {
  final double iconSize = 24.0;
  final Todo todo;

  PlaceItem({required this.todo});

  void _deleteTodo(BuildContext context) async {
    try {
      // to delete data from DataStore, we pass the model instance to
      // Amplify.DataStore.delete()
      await Amplify.DataStore.delete(todo);
    } catch (e) {
      print('An error occurred while deleting Todo: $e');
    }
  }

  Future<void> _toggleIsComplete() async {
    // copy the Todo we wish to update, but with updated properties
    Todo updatedTodo = todo.copyWith(isComplete: !todo.isComplete);
    try {
      // to update data in DataStore, we again pass an instance of a model to
      // Amplify.DataStore.save()
      await Amplify.DataStore.save(updatedTodo);
    } catch (e) {
      print('An error occurred while saving Todo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          _toggleIsComplete();
        },
        onLongPress: () {
          _deleteTodo(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(todo.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(todo.description ?? 'No description'),
                ],
              ),
            ),
            Container(
                child: todo.isComplete
                    ? PlatformIconButton(
                        materialIcon: const Icon(
                          Icons.check_box,
                          color: Colors.black,
                        ),
                        cupertinoIcon: const Icon(
                          CupertinoIcons.check_mark_circled_solid,
                          color: Colors.black,
                        ),
                      )
                    : PlatformIconButton(
                        materialIcon: const Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.black,
                        ),
                        cupertinoIcon: const Icon(
                          CupertinoIcons.circle,
                          color: Colors.black,
                        ),
                      )),
          ]),
        ),
      ),
    );
  }
}
