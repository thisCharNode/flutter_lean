//container 盒子=box div
//渲染组件
//child:
// opacity 透明
//clipoval:裁剪圆形
//cliprrect:裁剪方形
//physicalModel 不同形状
//align Center 子元素在父元素的位置
//sizebox 盒子大小组件
//fractionallySIZEbox 大小变化啊
//children:
//STACK 像postion 叠在一块
//flex
//  Column 列
//  row  行 不可换行
//wrap 行 可换行
//flow
// positioned ==css
//flexble  Expanded ==css控制flex 占据多少位置的组件




import 'package:flutter/material.dart';
class stateful extends StatefulWidget{
  const stateful({super.key});

  @override
  State<StatefulWidget> createState() {
    return statefulste();
  }
}
class statefulste extends State{
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('testful'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex:_currentindex ,
              onTap: (index){
                setState(() {
                  _currentindex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    label:'home',
                    icon: Icon(Icons.home,color: Colors.grey),
                    activeIcon: Icon(Icons.home,color: Colors.grey,)
                ),
                BottomNavigationBarItem(
                    label:'测试',
                    icon: Icon(Icons.home,color: Colors.blue),
                    activeIcon: Icon(Icons.home,color: Colors.red,)
                )
              ],
            ),
            body: ListView(
              children: [
               Column(
                 children: [
                   Row(
                     children: [
                       ClipOval(
                         child: SizedBox(
                           width: 100,
                           height: 100,
                           child:
                           Image.network('https://fc3tn.baidu.com/it/u=2699217495,3806221325&fm=202?x=0&y=0&h=340&w=510&vh=340.00&vw=510.00&oh=340.00&ow=510.00',
                           fit: BoxFit.cover,),
                         ),

                       ),
                       SizedBox(width: 20,
                       height: 100,
                       child:VerticalDivider (
                         color: Colors.red,
                         thickness: 1.5,
                       )),
                       ClipOval(
                         child: SizedBox(
                           width: 100,
                           height: 100,
                           child:
                           Image.network('https://fc3tn.baidu.com/it/u=2699217495,3806221325&fm=202?x=0&y=0&h=340&w=510&vh=340.00&vw=510.00&oh=340.00&ow=510.00',
                             fit: BoxFit.cover,),
                         ),

                       ),
                       Opacity(opacity: 0.6,
                         child:ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           child: SizedBox(
                             width: 100,
                             height: 100,
                             child:
                             Image.network('https://fc3tn.baidu.com/it/u=2699217495,3806221325&fm=202?x=0&y=0&h=340&w=510&vh=340.00&vw=510.00&oh=340.00&ow=510.00',
                               fit: BoxFit.cover,),
                           ),
                         ) ,
                       ),
                     ],
                   ),
                   const Divider(
                     height: 0,
                     color: Colors.red,
                     thickness: 2.0,
                   ),
                   FractionallySizedBox(
                     widthFactor: 1,
                     child:  Container(
                       alignment: Alignment.center,
                       width: 100,
                       height: 100,
                       child:  Text('FractionallySizedBox'),
                     ),
                   ),
                   const Divider(
                     height: 0,
                     color: Colors.red,
                     thickness: 2.0,
                   ),
                   Stack(
                     children: [
                       ClipOval(
                         child: SizedBox(
                           width: 100,
                           height: 100,
                           child:
                           Image.network('https://fc3tn.baidu.com/it/u=2699217495,3806221325&fm=202?x=0&y=0&h=340&w=510&vh=340.00&vw=510.00&oh=340.00&ow=510.00',
                             fit: BoxFit.cover,),
                         ),

                       ),
                       Positioned(
                         left: 0,
                           bottom: 0,
                           child: ClipOval(
                         child: SizedBox(
                           width: 50,
                           height: 50,
                           child:
                           Image.network('https://fc3tn.baidu.com/it/u=2699217495,3806221325&fm=202?x=0&y=0&h=340&w=510&vh=340.00&vw=510.00&oh=340.00&ow=510.00',
                             fit: BoxFit.cover,),
                         ),

                       ))
                     ],
                   )

                 ],
               )
              ],
            )

        )
    );
  }
  _item(String title,Color color){
    return Container(
      decoration: BoxDecoration(
          color: color
      ),
      alignment: Alignment.center,
      width: 300,
      height: 100,
      child: Text(title,style: TextStyle(color:Colors.black,fontSize: 22),),
    );
  }
}