import 'package:flutter/material.dart';

/// 它是DecoratedBox、ConstrainedBox、Transform、Padding、Align等widget的一个组合widget。
/// 所以我们只需通过一个Container可以实现同时需要装饰、变换、限制的场景。

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container')),
      body: new _MyContainer(),
    );
  }
}

class _MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 120),
      width: 200,
      height: 150,
      // 效果一致
      // constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
      //背景装饰
      decoration: BoxDecoration(
        //背景径向渐变
        gradient: RadialGradient(
          colors: [Colors.red, Colors.orange],
          center: Alignment.topLeft,
          radius: .98
        ),
        //卡片阴影
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0
          )
        ]
      ),
      transform: Matrix4.rotationZ(.2),
      alignment: Alignment.center,
      child: Text('5.20',style: TextStyle(color: Colors.white, fontSize: 40.0),),
    );
  }
}
