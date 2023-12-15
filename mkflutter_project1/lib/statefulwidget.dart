import 'package:flutter/material.dart';
class styleWidget extends StatefulWidget{
  const styleWidget({super.key});

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
          body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            width: 300,
            height: 100,
            margin: EdgeInsets.only(top: 10),
            child: PageView(
              children: [
                _item('page1',Colors.blue),
                _item('page2',Colors.green),
                _item('page3',Colors.red),
              ],
            ),
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