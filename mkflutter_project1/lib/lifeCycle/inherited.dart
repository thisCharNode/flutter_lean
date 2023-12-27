import 'package:flutter/material.dart';

class Inherited extends StatefulWidget {
  const Inherited({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return InheritedState();
  }
}

class InheritedState extends State<Inherited> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Inherited示例'),
          ),
          body: shareData(
            count: _count,
            child: Column(
              children: [
                Test1(count: _count),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _count++;
                    });
                  },
                  child: const Text('点我'),
                )
              ],
            ),
          )),
    );
  }
}

class Test1 extends StatelessWidget {
  final int count;

  Test1({required this.count});

  @override
  Widget build(BuildContext context) {
    return Test2(count: count);
  }
}

class Test2 extends StatelessWidget {
  final int count;

  Test2({required this.count});

  @override
  Widget build(BuildContext context) {
    return Test3(count);
  }
}

class Test3 extends StatefulWidget {
  final int count;

  Test3(this.count);

  @override
  State<StatefulWidget> createState() {
    return Test3State();
  }
}

class Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    return Text(shareData.of(context).count.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('---didChangeDependencies---');
  }
}

//创建inhertec共享参数方法
class shareData extends InheritedWidget {
  final int count; //需要共享的数据
  shareData({required this.count, required Widget child}) : super(child: child);
  //定义快捷方法  取需要共享的数据
  static of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<shareData>();
  }

  @override
  bool updateShouldNotify(shareData oldWidget) {
    return oldWidget.count != count;
  }
}
