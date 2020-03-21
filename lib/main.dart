import 'package:flutter/material.dart';

import 'package:mobilesoft/list/list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobilesoft Employees',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListPage(title: 'Employees'),
    );
  }
}

