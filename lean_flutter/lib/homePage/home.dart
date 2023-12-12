import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import './fonts.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State {
  @override
  Widget build(BuildContext context) {
    String userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
            title: Text("${userName}主页"),
            // leading:const Icon(Lan1ya.lanYa1) ,
            leading: const Icon(Icons.home),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  icon: const Icon(Icons.login_outlined))
            ]),
        body: const Column(
          children: [
            Text('你好'),
          ],
        ));
  }
}
