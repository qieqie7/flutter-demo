import 'package:flutter/material.dart';

/// 状态管理
class MyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('state'),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '自身管理自身状态',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18
            ),
          ),
          TapboxA(), 
          TapboxA(),
          Text(
            '父Widget管理子Widget状态',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18
            ),
          ), 
          ParentWidget()
        ],
      ),
    );
  }
}

// 自身 管理 自身状态
class TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TapboxA();
}

class _TapboxA extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() => _active = !_active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

// 父 管理 子状态
class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ParentWidget();
}

class _ParentWidget extends State<ParentWidget> {
  bool _active = true;

  void onChanged(value) {
    setState(() {
      _active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxB(
        active: _active,
        onChanged: onChanged,
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
