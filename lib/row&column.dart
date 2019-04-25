import 'package:flutter/material.dart';

/// 如果Row里面嵌套Row，
/// 或者Column里面再嵌套Column，
/// 那么只有对最外面的Row或Column会占用尽可能大的空间，
/// 里面Row或Column所占用的空间为实际大小

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row & Column')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Row', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyRow()));
            },
          ),
          ListTile(
            title: Text('Column', style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyColumn()));
            },
          ),
        ],
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row')),
      // Container 容器, 此处就是加个背景色, 观察 Row 的实际大小
      body: Column(
        //测试Row对齐方式，排除Column默认居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
                MainAxisAlignment.center, // 当 mainAxisSize 为 min 时, 不生效
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(
                " hello world ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text(" I am Jack "),
            ],
          ),
        ],
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colum')),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                    Text('Column 与 Row 相似'),
                    Text('只展示一下'),
                    Text('嵌套带来的问题'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
