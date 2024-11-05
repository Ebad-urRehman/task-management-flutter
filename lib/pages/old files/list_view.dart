import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) =>
              const ListTile(title: Text('List box'), tileColor: Colors.blue),
        ),
      ),
    );
  }
}


// optimization situations to use, Listview or single child scroll view, column row etc
