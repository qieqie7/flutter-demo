import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widget"),
      ),
      body: Center(
        child: FlatButton(
            color: Colors.orange,
            child: Text("Press"),
            onPressed: () {
              print('ops! pressed');
            }
        ),
      )
    );
  }
}
