import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New employee'),
      ),
      body: Form(
          child: Column(
        children: <Widget>[
          TextFormField(),
          TextFormField(),
          TextFormField(),
          TextFormField(),
        ],
      )),
    );
  }
}
