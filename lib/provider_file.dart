import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TasksListProvider extends ChangeNotifier {
  final todoTasks = [
    ['Buy the grocerries', 'On Nov 6 2024', 'incomplete'],
    ['Go to College', 'On Nov 7 2024', 'incomplete'],
    ['Got to College', 'On Nov 5 2024', 'completed'],
  ];

  void addTodoItems(String task, DateTime date) {
    if (task.isNotEmpty) {
      todoTasks.add([
        task,
        'to do on ${DateFormat.yMMMd().format(date)}',
        'incomplete',
      ]);
      notifyListeners();

      print(todoTasks);
    }
  }

  void completeTask(index) {
    todoTasks[index][2] = 'completed';
    print(todoTasks);
    notifyListeners();
  }
}
