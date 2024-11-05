import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  List taskList;
  int index;

  TaskListTile({super.key, required this.taskList, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const TasksView()));
      },
      child: (taskList[index][2] != 'completed')
          ? ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons
                    .pending_actions_rounded), // Display first letter as avatar
              ),
              title: Text((taskList[index][0]).toString()), // Display name
              subtitle: Text(taskList[index][1]),
              trailing: const Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(
                  Icons.edit_calendar_outlined,
                  color: Colors.redAccent,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.blue,
                ),
                Icon(Icons.task_rounded, color: Colors.green),
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
            ), // Optional subtitle
    );
  }
}
