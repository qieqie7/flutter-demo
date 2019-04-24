import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wrap & Flow',
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Wrap & Flow'),
        ),
        body: Flow(
          delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
          children: <Widget>[
            new Container(width: 80.0,height: 80.0,color: Colors.red,),
            new Container(width: 80.0,height: 80.0,color: Colors.green,),
            new Container(width: 80.0,height: 80.0,color: Colors.blue,),
            new Container(width: 80.0,height: 80.0,color: Colors.yellow,),
            new Container(width: 80.0,height: 80.0,color: Colors.brown,),
            new Container(width: 80.0,height: 80.0,color: Colors.purple,),
          ],
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = margin.left;
    double y = margin.top;
    //计算每一个子widget的位置
    // 楼梯形排列
    for(int i = 0; i < context.childCount; i++) {
      double w = context.getChildSize(i).width + x + margin.right;
      if(w <= context.size.width) {
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width + margin.right + margin.left;
      }
      y += context.getChildSize(i).height + margin.top + margin.bottom;
    }
    
    // for (int i = 0; i < context.childCount; i++) {
    //   var w = context.getChildSize(i).width + x + margin.right;
    //   if (w < context.size.width) {
    //     context.paintChild(i,
    //         transform: new Matrix4.translationValues(x, y, 0.0));
    //     x = w + margin.left;
    //   } else {
    //     x = margin.left;
    //     y += context.getChildSize(i).height + margin.top + margin.bottom;
    //     //绘制子widget(有优化)
    //     context.paintChild(i,
    //         transform: new Matrix4.translationValues(x, y, 0.0));
    //     x += context.getChildSize(i).width + margin.left + margin.right;
    //   }
    // }
  }

  getSize(BoxConstraints constraints) {
    //指定Flow的大小
    return Size(double.infinity, double.infinity);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
