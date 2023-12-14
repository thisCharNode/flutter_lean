import 'package:flutter/material.dart';

class lesswidget extends StatelessWidget {
  const lesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Statelesswidget',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Appbar'),
            ),
            body: ListView(
              children: [
                Column(
                  children: [
                    Container(
                        width: 200.0, // 设置容器的宽度
                        height: 100.0,
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                            // shape: BoxShape.circle,//圆型不能有圆角
                            shape: BoxShape.rectangle,
                            // backgroundBlendMode: BlendMode.screen,
                            // border: Border(top: BorderSide(color: Colors.greenAccent)),
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors.purple.withOpacity(0.5), // 阴影颜色，带透明度
                                offset: Offset(30, 10), // 阴影偏移量，x轴0，y轴3
                                blurRadius: 5.0, // 模糊半径
                                spreadRadius: 2.0, // 扩散半径
                              ),
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                offset: Offset(0, 30),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.yellow],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ), // 渐变效果
                            color: Colors.pink,
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://fc5tn.baidu.com/it/u=4149462078,1139097603&fm=202'),
                              fit: BoxFit.fitHeight, // 根据需要调整填充方式
                            )),
                        child: const Stack(
                          children: [
                            Positioned(
                              left: 50.0,
                              child: Text(
                                '瓦洛兰特',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                            )
                          ],
                        )),
                    const Icon(
                      Icons.android,
                      size: 50,
                      color: Colors.green,
                    ),
                    CloseButton(),
                    Divider(
                      color: Colors.yellow,
                    ),
                    const Card(
                      color: Colors.lightBlueAccent,
                      elevation: 20,
                      child: SizedBox(
                        width: 100,
                        height: 50,
                        child: Text('card'),
                      ),
                    ),
                    // Expanded(flex: 1, child: BackButton()),
                    AlertDialog(
                      title: Text('DIALOG'),
                      content: Text('con'),
                    ),
                    SizedBox(
                        width: 100,
                        height: 50,
                        child: Chip(
                          label: Text('CHIP小组件'),
                          avatar: Icon(Icons.people),
                          // padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: -4.0, vertical: -4.0),
                        ))
                  ],
                )
              ],
            )));
  }
}
