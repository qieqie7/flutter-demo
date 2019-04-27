import 'package:flutter/material.dart';
import 'flow.dart';

class WrapAndFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap & Flow')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Wrap'),
            onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) => MyWrap())),
          ),
          ListTile(
            title: Text('Flow'),
            onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) => MyFlow())),
          ),
        ],
      ),
    );
  }
}

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: Text('Wrap')),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.spaceAround, //沿主轴方向居中
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('Hamilton'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('M')),
              label: new Text('Lafayette'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('H')),
              label: new Text('Mulligan'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('J')),
              label: new Text('Laurens'),
            ),
          ],
        ),
      )
    );
  }
}
