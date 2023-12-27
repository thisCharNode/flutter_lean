import 'package:flutter/material.dart';

//检测生命周期
class life1 extends StatefulWidget {
  const life1({super.key});

  @override
  State<StatefulWidget> createState() {
    return Life1State();
  }
}

class Life1State extends State with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('生命周期'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('点击1')),
          ElevatedButton(onPressed: () {}, child: const Text('点击2'))
        ],
      ),
    ));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // 移除观察者
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 生命周期变化回调
    super.didChangeAppLifecycleState(state);
    print('AppLifecycleState: $state');
    if (state == AppLifecycleState.paused) {
      print('app进入手机后台');
    }
    if (state == AppLifecycleState.resumed) {
      print('app恢复状态');
    }
    if (state == AppLifecycleState.inactive) {
      print('app不活跃'); //接电话
    }
  }
}
