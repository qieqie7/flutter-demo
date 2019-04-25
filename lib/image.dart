import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image & Icon'),
        ),
        body: new Column(
          children: <Widget>[
            Text('Image',style: TextStyle(fontSize: 30,color: Colors.blue)),
            Text('assets 加载'),
            Image(image: AssetImage("images/avatar.jpeg"), width: 100.0),
            Text('网络 加载'),
            Image(
              image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
            Image.network("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",width: 100.0),
            Text(
              'Icon',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Text(
              "\uE914" + " \uE000" + " \uE90D",
              style: TextStyle(fontFamily: "MaterialIcons",fontSize: 24.0,color: Colors.green),
            ),
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.green,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.blue,
            ),
            Text(
              '自定义Icon',
              style: TextStyle(fontSize: 30,color: Colors.blue ),
            ),
            // TODO: 下次在做了, 自定义Icon
          ],
        ),
    );
  }
}
