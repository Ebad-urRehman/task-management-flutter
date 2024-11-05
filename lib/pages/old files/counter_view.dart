import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => CounterViewState();
}

class CounterViewState extends State<CounterView> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Text('$count'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          style: const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 6, 7, 8)),
          ),
          child: const Text('Add'),
        )
      ],
    )));
  }
}


// text buttons and elevated button widgets

