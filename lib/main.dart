import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider_file.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pages/categories/categories.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => TasksListProvider()),
    ], child: (Home())));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Categories();
  }
}
