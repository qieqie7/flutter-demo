import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Switch & Checkbox',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Switch & Checkbox'),
        ),
        body: new SwitchAndCheckboxTestRoute(),
      ),
    );
  }
}

class SwitchAndCheckboxTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SwitchAndCheckboxTestRoute();
}

class _SwitchAndCheckboxTestRoute extends State<SwitchAndCheckboxTestRoute> {
  bool _switchSelected = true; // 维护单选开关状态
  bool _checkboxSelected = true; // 维护复选框状态

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
          activeColor: Colors.red,
        )
      ],
    );
  }
}
