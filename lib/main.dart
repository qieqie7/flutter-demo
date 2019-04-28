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
import 'flex.dart';
import 'wrap.dart';
import 'stack.dart';
import 'padding.dart';
import 'constrained_box.dart';
import 'decorate_box.dart';
import 'transform.dart';
import 'container.dart';
import 'scaffold_route.dart';
import 'single_child_scroll_view.dart';
import 'list_view.dart';
import 'my_grid_view.dart';
import 'custom_scroll_view_test_route.dart';
import 'scroll_controller.dart';
import 'scroll_listener.dart';
import 'will_pop_scope.dart';
import 'inherited_widget.dart';
import 'theme.dart';
import 'pointer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: 'Flutter 实战', home: MyHome());
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
  //需要定义一个Controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter 实战')),
      body: Scrollbar( // 滚动条
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('基础Widget', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => BasicWidget()));
              },
            ),
            ListTile(
              title: Text('生命周期', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => LifeCycle()));
              },
            ),
            ListTile(
              title: Text('文本、字体样式', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyText()));
              },
            ),
            ListTile(
              title: Text('State', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyState()));
              },
            ),
            ListTile(
              title: Text('按钮', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyButton()));
              },
            ),
            ListTile(
              title: Text('Image', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyImage()));
              },
            ),
            ListTile(
              title: Text('单选框和复选框', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MySelect()));
              },
            ),
            ListTile(
              title: Text('输入框和表单', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyInput()));
              },
            ),
            ListTile(
              title:
                  Text('线性布局Row和Column', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => RowAndColumn()));
              },
            ),
            ListTile(
              title: Text('Flex', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyFlex()));
              },
            ),
            ListTile(
              title:
                  Text('流式布局Wrap Flow', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => WrapAndFlow()));
              },
            ),
            ListTile(
              title: Text('Stack', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyStack()));
              },
            ),
            ListTile(
              title: Text('Padding', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyPadding()));
              },
            ),
            ListTile(
              title: Text('布局限制类容器ContrainedBox',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => MyConstrainedBox()));
              },
            ),
            ListTile(
              title: Text('装饰容器DecoratedBox',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => MyDecoratedBox()));
              },
            ),
            ListTile(
              title: Text('Transform变换', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyTransform()));
              },
            ),
            ListTile(
              title: Text('Container', style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => MyContainer()));
              },
            ),
            ListTile(
              title: Text('Scaffold、TabBar、底部导航',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => ScaffoldRoute()));
              },
            ),
            ListTile(
              title: Text('SingleChildScrollView',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => SCSV()));
              },
            ),
            ListTile(
              title: Text('ListView',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => MyListView()));
              },
            ),
            ListTile(
              title: Text('GridView',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => MyGridView()));
              },
            ),
            ListTile(
              title: Text('CustomScrollView',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => CustomScrollViewTestRoute()));
              },
            ),
            ListTile(
              title: Text('滚动监听及控制',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => ScrollControllerTestRoute()));
              },
            ),
            ListTile(
              title: Text('滚动监听',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => ScrollNotificationTestRoute()));
              },
            ),
            ListTile(
              title: Text('导航返回拦截 WillPopScope',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => WillPopScopeTestRoute()));
              },
            ),
            ListTile(
              title: Text('数据共享 InheritedWidget',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => InheritedWidgetTestRoute()));
              },
            ),
            ListTile(
              title: Text('主题-Theme',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => ThemeTestRoute()));
              },
            ),
            ListTile(
              title: Text('Pointer事件处理',
                  style: TextStyle(color: Colors.blue)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => MyPointer()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
