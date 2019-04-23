import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TextField',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body: new Column(
          children: <Widget>[
            Text('TextField'),
            // username
            new UnameTextField(),
            // password
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              onChanged: (String value) {
                print('print "$value" by onChanged');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UnameTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _UnameTextField();
}

class _UnameTextField extends State<UnameTextField> {
  TextEditingController _unameController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _unameController.text="hello world!";
    _unameController.selection=TextSelection(
        baseOffset: 2,
        extentOffset: _unameController.text.length
    );
    _unameController.addListener((){
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: _unameController,
      decoration: InputDecoration(
          labelText: "用户名", hintText: "用户名或邮箱", prefixIcon: Icon(Icons.person)),
      onChanged: (String value) {
        print('print "$value" by onChanged');
        print('print "${_unameController.text}" from TextEditingController');
      },
    );
  }
}
