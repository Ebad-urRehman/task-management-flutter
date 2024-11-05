import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/view%20tasks/tasks.dart';

class CategoriesTile extends StatelessWidget {
  List<List> data;
  int index;

  CategoriesTile({super.key, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TasksView()));
      },
      child: ListTile(
        leading: CircleAvatar(
          child: data[index][2], // Display first letter as avatar
        ),
        title: Text((data[index][0]).toString()), // Display name
        subtitle: Text(data[index][1]), // Optional subtitle
      ),
    );
  }
}
