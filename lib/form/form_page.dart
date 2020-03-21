import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  final Function _validator = (String value) {
    if (value.isEmpty) return 'Cannot by empty';
    return null;
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New employee'),
      ),
      body: Builder(
        builder: (BuildContext ctx) => Container(
          padding: EdgeInsets.all(16.00),
          child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 64.0,
                          backgroundImage: AssetImage(
                              'assets/images/person_placeholder.png'),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Name'),
                              validator: _validator,
                            ),
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Address'),
                              validator: _validator,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Department'),
                    validator: _validator,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Salary'),
                    validator: _validator,
                  ),
                  RaisedButton(
                    child: Text('Save'),
                    onPressed: () {
                      _formKey.currentState.validate();
                      Scaffold.of(ctx).showSnackBar(
                          SnackBar(content: Text('Not implemented yet')));
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
