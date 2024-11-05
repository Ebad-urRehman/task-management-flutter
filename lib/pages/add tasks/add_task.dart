import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider_file.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

final TextEditingController _taskAddingController = TextEditingController();

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Application',
      home: Consumer<TasksListProvider>(
        builder: (context, dataProviderList, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add_box),
              hoverColor: Colors.blue.withOpacity(0.5),
              tooltip: 'Add a New Task',
              onPressed: () {
                dataProviderList.addTodoItems('String');
              }),
          appBar: AppBar(title: const Text('To do App')),
          body: const AddTask(),
        ),
      ),
    );
  }
}

DateTime? _selectedDate = DateTime.now();

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  // finding current date
  DateTime _currentDate = DateTime.now();
  final CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: CalendarDatePicker(
                initialDate: _currentDate,
                firstDate: DateTime(2022, 1, 1),
                lastDate: DateTime(2025, 12, 12),
                onDateChanged: (selectedDate) {
                  setState(() {
                    _selectedDate = selectedDate;
                  });
                }),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: TextFormField(
                controller: _taskAddingController,
                decoration: InputDecoration(
                  label: Text(
                      'Enter task to do on ${DateFormat.yMMMd().format(_selectedDate!)}'),
                  prefixIcon: const Icon(Icons.calendar_month_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  fillColor: Colors.purple.withOpacity(0.7),
                  filled: true,
                )),
          ),
        ],
      ),
    );
  }
}
