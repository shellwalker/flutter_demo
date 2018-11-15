import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'shared_data.dart';

class SharedDataInputWidget extends StatefulWidget {
  SharedDataInputWidget({@required this.data});

  final SharedData data;

  @override
  _SharedDataInputWidgetState createState() => _SharedDataInputWidgetState();
}

class _SharedDataInputWidgetState extends State<SharedDataInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new TextField(
          onChanged: (str) {
            widget.data.username = str;
          },
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            labelText: "用户名",
            hintText: "请输入英文或数字",
          ),
          maxLines: 1,
          maxLength: 32,
          keyboardType: TextInputType.text,
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[a-zA-Z0-9]")),
          ],
        ),
        new TextField(
          onChanged: (str) {
            widget.data.password = str;
          },
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            labelText: "密码",
            hintText: "请输入6位数字密码",
          ),
          maxLines: 1,
          maxLength: 6,
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[0-9]")),
          ],
          obscureText: true, // 密码输入，隐藏内容
        ),
      ],
    );
  }
}
