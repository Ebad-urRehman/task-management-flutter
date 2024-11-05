import 'package:flutter/material.dart';

class TasksListProvider extends ChangeNotifier {
  final todoTasks = [
    ['Buy the grocerries', 'On Nov 6 2024', 'incomplete'],
    ['Go to College', 'On Nov 7 2024', 'incomplete'],
    ['Got to College', 'On Nov 5 2024', 'completed'],
  ];

  void addTodoItems(String task) {
    if (task.isNotEmpty) {
      todoTasks.add([
        task,
        'To be completed on date}',
        'incomplete',
      ]);
      notifyListeners();

      print(todoTasks);
    }
  }
}
