import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './fonts.dart';

class Test extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}
class TestState extends State{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: const Text('first_flutter'),
       leading:const Icon(Lan1ya.lanYa1) ,
     ),
       body:Text('你好')
   );
  }

}