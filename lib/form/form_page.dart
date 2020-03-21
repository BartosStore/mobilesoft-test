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
      body: Container(
        padding: EdgeInsets.all(16.00),
        child: Form(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    radius: 64.0,
                    backgroundImage:
                        AssetImage('assets/images/person_placeholder.png'),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Address'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            RaisedButton(
              child: Text('Save'),
              onPressed: () {},
            ),
          ],
        )),
      ),
    );
  }
}
