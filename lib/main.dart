import 'package:flutter/material.dart';
import 'basic_widget.dart';
import 'life_cycle.dart';
import 'state.dart';
import 'text.dart';
import 'button.dart';
import 'image.dart';
import 'switch.dart';
import 'text_field.dart';
import 'row&column.dart';
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
  Widget build(BuildContext context) => MaterialApp(title: 'Flutter 实战', home: MyHome());
}

/// **************************************************
/// * 此处必须封装一个 widget 作为中间层
/// * 因为如果不封装会直接使用 MaterialApp 实例的上下文
/// * 这个是提供 Navigator 的上下文
/// * 会报错! 
/// * 必须使用不含有 MaterialApp 实例的上下午
/// * 才能实现路由导航
/// **************************************************
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
          ListTile(
            title: Text('生命周期', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => LifeCycle())
              );
            },
          ),
          ListTile(
            title: Text('文本、字体样式', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => MyText())
              );
            },
          ),
          ListTile(
            title: Text('State', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => MyState())
              );
            },
          ),
          ListTile(
            title: Text('按钮', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => MyButton())
              );
            },
          ),
          ListTile(
            title: Text('Image', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => MyImage())
              );
            },
          ),
          ListTile(
            title: Text('单选框和复选框', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => MySelect())
              );
            },
          ),
          ListTile(
            title: Text('输入框和表单', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => MyInput())
              );
            },
          ),
          ListTile(
            title: Text('线性布局Row和Column', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => RowAndColumn())
              );
            },
          ),
        ],
      ),
    );
  }
}
