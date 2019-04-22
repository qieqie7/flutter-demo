import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TextField',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body: new Column(
          children: <Widget>[
            Text('TextField')
          ],
        ),
      ),
    );
  }
}