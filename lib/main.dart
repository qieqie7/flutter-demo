import 'package:flutter/material.dart';
import 'basic_widget.dart';

// import 'life_cycle.dart';
// import 'state.dart';
// import 'text.dart';
// import 'button.dart';
// import 'image.dart';
// import 'switch.dart';
// import 'row&column.dart';
// import 'text_field.dart';
// import 'flex.dart';
// import 'wrap.dart';
// import 'flow.dart';
// import 'stack.dart';
// import 'padding.dart';
// import 'constrained_box.dart';
// import 'decorate_box.dart';
// import 'transform.dart';
// import 'container.dart';
// import 'single_child_scroll_view.dart';
// import 'list_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 实战',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 实战'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('基础Widget', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => BasicWidget())
              );
            },
          ),
        ],
      ),
    );
  }
}
