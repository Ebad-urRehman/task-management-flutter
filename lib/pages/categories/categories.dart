import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/categories/widgets_data.dart';
import 'package:flutter_application_1/pages/categories/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          hoverColor: Colors.blue.withOpacity(0.5),
          tooltip: 'Add a Custom Category',
        ),
        appBar: AppBar(
          title: Text('Tasks Management Application'),
          backgroundColor: Colors.blue.withOpacity(0.5),
        ),
        body: ListView.builder(
            itemCount: categories_data.length,
            itemBuilder: (context, index) {
              return CategoriesTile(data: categories_data, index: index);
            }),
      ),
    );
  }
}
