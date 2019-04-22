import 'package:flutter/material.dart';

/// State 生命周期

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Life Cycle',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Life Cycle'),
        ),
        body: new MainPage(
          initValue: 0,
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final int initValue;

  const MainPage({Key key, this.initValue});

  @override
  State<StatefulWidget> createState() => new _MainPage();
}

class _MainPage extends State<MainPage> {
  int _counter;

  @override
  void initState() {
    super.initState();
    //初始化状态
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: FlatButton(
        child: Text('$_counter'),
        //点击后计数器自增
        onPressed: () => setState(() => ++_counter),
      ),
    );
  }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
