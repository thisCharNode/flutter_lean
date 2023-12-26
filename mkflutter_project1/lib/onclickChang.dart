import 'package:flutter/material.dart';
class onclickChange extends StatelessWidget{
  const onclickChange({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch:Colors.blue
     ),
     home: Scaffold(
       appBar: AppBar(
         title: Text('onclick'),
         leading: GestureDetector(
           onTap: (){
             Navigator.pop(context);
           },
           child: Icon(Icons.people),
         ),
       ),
       body: FractionallySizedBox(
         widthFactor: 1,
         child: Stack(
           children: [
             GestureDetector(
               onTap: (){print('onTap');},
               onDoubleTap: (){print('onDoubleTap');},
               onLongPress: (){print('onLongPress');},//长按
               onTapCancel: (){print('onTapCancel');},//点击取消
               onTapUp: (e){print('onTapUp');},//点击抬起
               onTapDown: (e){print('onTapDown');},//点击抬起
             )
           ],
         ),
       ),
     ),
   );
  }

}