import 'package:flutter/material.dart';
import 'package:lean_flutter/test.dart';

void main() {
  runApp( Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
     MaterialApp(
      title: 'first_demo',
      home:  Test(),
    );
  }

}








