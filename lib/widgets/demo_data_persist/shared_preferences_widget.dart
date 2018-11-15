import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_data.dart';

class SharedPreferencesWidget extends StatefulWidget {
  final SharedData data;

  SharedPreferencesWidget({@required this.data});

  @override
  _SharedPreferencesWidgetState createState() =>
      _SharedPreferencesWidgetState();
}

class _SharedPreferencesWidgetState extends State<SharedPreferencesWidget> {
  var _opResult;

  _add() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(SharedData.KEY_USERNAME, widget.data.username);
    prefs.setString(SharedData.KEY_PASSWORD, widget.data.password);
    setState(() {
      _opResult = "添加成功，请点击查询按钮检查";
    });
  }

  _delete() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(SharedData.KEY_USERNAME);
    prefs.remove(SharedData.KEY_PASSWORD);
    // prefs.clear(); // DANGEROUS!!! clear all keys
    setState(() {
      _opResult = "删除成功，请点击查询按钮检查";
    });
  }

  _update() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(SharedData.KEY_USERNAME, 'sheallwalker');
    prefs.setString(SharedData.KEY_PASSWORD, '1234567890');
    setState(() {
      _opResult = "更新成功，用户名修改为'sheallwalker'，密码修改为1234567890, 请点击查验证结果";
    });
  }

  _query() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.get(SharedData.KEY_USERNAME);
    String pwd = prefs.get(SharedData.KEY_PASSWORD);
    setState(() {
      _opResult = "查询成功: username: $username pwd: $pwd";
    });
  }

  Widget _buildTitle() {
    return new Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: new Text('shared_preferences用法'),
    );
  }

  Widget _buildButtons() {
    return Row(
      children: <Widget>[
        RaisedButton(
          child: Text("增加"),
          onPressed: _add,
        ),
        RaisedButton(
          child: Text("删除"),
          onPressed: _delete,
        ),
        RaisedButton(
          child: Text("修改"),
          onPressed: _update,
        ),
        RaisedButton(
          child: Text("查询"),
          onPressed: _query,
        ),
      ],
    );
  }

  Widget _buildResult() {
    return new Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: new Text(_opResult != null ? '结果：$_opResult' : ""),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTitle(),
        _buildButtons(),
        _buildResult(),
      ],
    );
  }
}
