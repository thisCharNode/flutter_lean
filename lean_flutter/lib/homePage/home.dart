import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import './fonts.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight:30,
          title: Text("${userName}主页"),
          centerTitle: true, //标题居中
          titleTextStyle: TextStyle(color: Colors.purple),
          elevation: 5.0, //appbar 的阴影
          // leading:const Icon(Lan1ya.lanYa1) ,
          leading: const Icon(Icons.home),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                icon: const Icon(Icons.login_outlined))
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [Tab(text: '小王'), Tab(text: '小玉')],
          ),
          backgroundColor: Colors.blueAccent,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(child: Text('Content of Tab 1',style: TextStyle(color: Colors.red))),
          // 第二个选项卡的内容
          Container(child: Text('Content of Tab 2')),
        ],
      ),
    );
  }
}
