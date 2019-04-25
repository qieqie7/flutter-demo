import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text('Text')),
      body: new Column(
        // Column 在 crossAxis 默认居中, 去除负效果
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Hello world 右对齐',
            // 右对齐
            // 对齐的参考系是 Text widget 本身, 但因为Text宽度与文本内容相等,所以看不出效果
            textAlign: TextAlign.right, 
          ),
          Text(
            "Hello 左对齐" * 6, //字符串重复六次
            textAlign: TextAlign.left,
          ),
          new Text(
            'Hello world 行位省略' * 15,
            maxLines: 1, // 最大行数
            overflow: TextOverflow.ellipsis, // 行位省略 ...
          ),
          Text(
            "Hello world",
            // 主要是用于系统字体大小设置改变时对Flutter应用字体进行全局调整，
            // 而fontSize通常用于单个文本。
            textScaleFactor: 1.5, // 缩放比例
          ),
          Text(
            "Hello world",
            style: TextStyle(
              color: Colors.blue, // 蓝字
              fontSize: 18.0, // 字体大小
              // 此文本的高度跨度，作为字体大小的倍数。
              // 如果应用于根[TextSpan]，则此值将行高度（后续文本基线之间的最小距离）设置为字体大小的倍数。
              height: 3,
              fontFamily: "Courier", // 字体
              background: new Paint()..color = Colors.yellow, // 背景色
              decoration: TextDecoration.underline, // 下划线
              decorationStyle: TextDecorationStyle.dashed // 下划线风格
            ),
          ),

          // TextSpan
          Text.rich(
            TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
              // recognizer:
              ),
            ])
          ),

          // DefaulTextStyle
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text(
                  "I am Jack",
                  style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
