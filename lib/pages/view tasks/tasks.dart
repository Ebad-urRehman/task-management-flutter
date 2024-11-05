import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/add%20tasks/add_task.dart';
import 'package:flutter_application_1/pages/view tasks/widgets.dart';
import 'package:flutter_application_1/provider_file.dart';
import 'package:provider/provider.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddTaskScreen()));
            },
            child: const Icon(Icons.add_to_photos_rounded),
            hoverColor: Colors.blue.withOpacity(0.5),
            tooltip: 'Add a New Task',
          ),
          appBar: AppBar(
            title: const Text('View yours tasks here'),
            backgroundColor: Colors.blue.withOpacity(0.5),
          ),
          body: Consumer<TasksListProvider>(
            builder: (context, dataProviderModel, child) => ListView.builder(
                itemCount: dataProviderModel.todoTasks.length,
                itemBuilder: (context, index) {
                  return TaskListTile(
                    taskList: dataProviderModel.todoTasks,
                    index: index,
                  );
                }),
          )),
    );
  }
}
