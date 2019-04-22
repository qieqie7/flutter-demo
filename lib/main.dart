import 'package:flutter/widgets.dart';
// import 'life_cycle.dart' show LifeCycle;
// import 'state.dart';
// import 'basic_widget.dart';
// import 'text.dart';
import 'image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget widget = new LifeCycle();
    Widget widget = new Home();
    return widget;
  }
}