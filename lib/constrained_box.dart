import 'package:flutter/material.dart';

/// UnconstrainedBox不会对子Widget产生任何限制，
/// 它允许其子Widget按照其本身大小绘制。
/// 一般情况下，我们会很少直接使用此widget，
/// 但在"去除"多重限制的时候也许会有帮助

class Home extends StatelessWidget {
  final Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ContrainedBox',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('ContrainedBox'),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50.0 //最小高度为50像素
              ),
          child: Container(
            height: 5.0,  // 不生效, 因为声明了最小高度 50
            child: redBox
          ),
        ),
      ),
    );
  }
}