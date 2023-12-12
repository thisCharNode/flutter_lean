import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './fonts.dart';
import 'package:lean_flutter/router/ongen_router.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('登录页面'),
          // leading:const Icon(Lan1ya.lanYa1) ,
          leading: const Icon(Icons.logout),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("登录"),
            onPressed: () {
              Navigator.pushNamed(context, "/home", arguments: '靖');
            },
          ),
        ));
  }
}
