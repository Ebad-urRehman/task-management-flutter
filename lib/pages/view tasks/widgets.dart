import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider_file.dart';
import 'package:provider/provider.dart';

class TaskListTile extends StatelessWidget {
  List taskList;
  int index;
  TaskListTile({
    super.key,
    required this.taskList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksListProvider>(
        builder: (context, dataProviderModel, child) {
      var taskList = dataProviderModel.todoTasks;

      return (taskList[index][2] != 'completed')
          ? ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons
                    .pending_actions_rounded), // Display first letter as avatar
              ),
              title: Text((taskList[index][0]).toString()), // Display name
              subtitle: Text(taskList[index][1]),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                const Icon(
                  Icons.edit_calendar_outlined,
                  color: Colors.redAccent,
                ),
                const Icon(
                  Icons.star_border_outlined,
                  color: Colors.blue,
                ),
                GestureDetector(
                    onTap: () {
                      dataProviderModel.completeTask(index);
                    },
                    child: Container(
                        child: Icon(Icons.task_rounded, color: Colors.green))),
              ]),
            )
          : ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.task_alt_rounded,
                  color: Colors.green,
                ), // Display first letter as avatar
              ),
              title: Text(
                (taskList[index][0]).toString(),
                style: const TextStyle(
                    color: Colors.purple,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.blue,
                    decorationThickness: 5),
              ), // Display name
              subtitle: Text(
                taskList[index][1],
                style: const TextStyle(
                    color: Colors.purple,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.blue,
                    decorationThickness: 5),
              ),
              trailing: const Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.task_rounded, color: Colors.grey),
              ]),
            );
    });
  }
}
