import 'package:flutter/material.dart';

/// Material widget库中提供了多种按钮Widget如RaisedButton、FlatButton、OutlineButton等，
/// 它们都是直接或间接对RawMaterialButton的包装定制

// const FlatButton({
//   ...  
//   @required this.onPressed, //按钮点击回调
//   this.textColor, //按钮文字颜色
//   this.disabledTextColor, //按钮禁用时的文字颜色
//   this.color, //按钮背景颜色
//   this.disabledColor,//按钮禁用时的背景颜色
//   this.highlightColor, //按钮按下时的背景颜色
//   this.splashColor, //点击时，水波动画中水波的颜色
//   this.colorBrightness,//按钮主题，默认是浅色主题 
//   this.padding, //按钮的填充
//   this.shape, //外形
//   @required this.child, //按钮的内容
// })

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button')),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("RaiseButton"),
            onPressed: () => print('RaiseButton, 漂浮按钮, 按下后, 阴影会变大'),
          ),
          FlatButton(
            child: Text("FlatButton"),
            onPressed: () => print('扁平按钮，默认背景透明并不带阴影。按下后，会有背景色'),
          ),
          OutlineButton(
            child: Text("OutlineButton"),
            onPressed: () =>
                print('默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)'),
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () => print('可点击的Icon，不包括文字，默认没有背景，点击后会出现背景'),
          ),
          // 自定义按钮
          RaisedButton(
            child: Text('自定义按钮'),
            onPressed: () => print('蓝色圆角自定义按钮'),
            color: Colors.blue,
            colorBrightness: Brightness.dark,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}
