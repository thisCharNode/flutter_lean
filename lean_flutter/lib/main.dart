import 'package:flutter/material.dart';
import './fonts.dart';

void main() {
  runApp( MyApp());
}

/**scaffold学习
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Home()
    );
  }

}
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState()=>_home();

}
class _home extends State{
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //导航
      appBar: AppBar(
        title:const Text('靖'),
        //文字居中
        centerTitle: true,
        //左侧图标
        // leading: Icon(Lan1ya.lanYa1),
        //右侧图标
        actions: [Icon(Lan1ya.lanYa1)],
      ),
      body: IndexedStack(
        index: _index,
        children: [
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
                child: Center(
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: CircleAvatar(
                      child: Image.network('https://lmg.jj20.com/up/allimg/1113/051220112022/200512112022-2-1200.jpg')
                    ),
                  ),
            )),
            ListTile(
               leading: Icon(Lan1ya.lanYa1),
              title:Text('瓦洛兰特'),
             //二级标题
             subtitle: Text('蝰蛇'),
             trailing:  Image.network('https://olimg.3dmgame.com/uploads/images/xiaz/2020/0414/1586848378741.jpg'),

              ),
            ListTile(title:Text('LOL'),leading: Icon(Lan1ya.lanYa1)),
            ListTile(title:Text('双人成形'),leading: Icon(Lan1ya.lanYa1)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_index ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: '菜单'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: '我'),
        ],
        onTap: (index){
          setState(() {
            _index =index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {  },

      ),
    );
  }

}
 **/
/**练习

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.blue, // 设置应用程序的主要颜色
//         buttonTheme: const ButtonThemeData(
//           buttonColor: Colors.green, // 设置按钮的默认颜色
//         ),
//         textTheme: const TextTheme(
//           headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // 设置标题的默认样式
//           bodyText2: TextStyle(fontSize: 16.0), // 设置正文的默认样式
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My App'),
//         ),
//         body: const Center(
//           child: Text('Hello, World!'),
//         ),
//       ),
//     );
//   }
// }
 * **/
/** 练习
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light, // 设置应用程序的整体主题
            // appBarTheme: const AppBarTheme(
            //   backgroundColor: Colors.red,),
            primaryColor: Colors.pink[900], // 设置应用程序的主要颜色
            buttonTheme: const ButtonThemeData(
              buttonColor: Colors.green, // 设置按钮的默认颜色
            ),
            textTheme:  const TextTheme(
              titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // 设置标题的默认样式
              bodyMedium: TextStyle(fontSize: 16.0), // 设置正文的默认样式
            ),
          ),
        home: Scaffold(
          appBar:  AppBar(
            title: const Text('小猪佩奇2'),
            //文字是否居中
            centerTitle: true,
            // backgroundColor: Colors.blue,
          ),
          body:ListView(
            children: [
              wangClumn(),

            ],
          )

        ),
      );
  }
}
 wangClumn(){
  return const Column(
  children: [
    Myapp2(),
    Icon(
      Icons.home,
      size: 50,
      color: Colors.yellow,
    ),
    Icon(Lan1ya.lanYa1,size: 50,color: Colors.red,),
  ]
  );
}
class Myapp2 extends StatelessWidget {
  const  Myapp2({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,
        width: 250,
        height:200,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        decoration: const BoxDecoration(
          color:Colors.blue,
          gradient:  LinearGradient(colors:[
            Colors.red,
            Colors.blue,
          ])
        ),
        child:  const Text('小猪佩奇1',style:TextStyle(
          fontSize: 40,
          color: Colors.red,
        ),
          textDirection:TextDirection.ltr,
        // child: const Text('小猪佩奇'),
      ),

    );
  }
}
class Button extends StatefulWidget{
  const Button({super.key});
  @override
  _ButtonState createState() => _ButtonState();
}
class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){
      },
      child: const Text('按钮'),
    );
  }
}
 // **/
// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const  MaterialApp(
//         home: Home()
//     );
//   }
// }
// class Home extends StatelessWidget{
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title:const Text('练习Gridview'),
//         ),
//           body:gridViewExtent()
//       );
//   }}
// //gridViewCount用一行个数限制
// Widget gridViewCount(){
//   return GridView.count(
//     crossAxisCount: 3,
//     children: const [
//       ListTile(title:Text('1',textAlign: TextAlign.center,),),
//       ListTile(title:Text('2',textAlign: TextAlign.center),),
//       ListTile(title:Text('3',textAlign: TextAlign.center),),
//       ListTile(title:Text('4',textAlign: TextAlign.center),),
//       ListTile(title:Text('5',textAlign: TextAlign.center),),
//       ListTile(title:Text('6',textAlign: TextAlign.center),),
//       ListTile(title:Text('7',textAlign: TextAlign.center),),
//       ListTile(title:Text('8',textAlign: TextAlign.center),),
//       ListTile(title:Text('9',textAlign: TextAlign.center),),
//       ListTile(title:Text('10',textAlign: TextAlign.center),),
//     ],
//   );
// }
// // gridViewExtent用每个元素宽度限制
// Widget gridViewExtent(){
//   return GridView.extent(
//     maxCrossAxisExtent: 180,
//     children: const [
//       ListTile(title:Text('1',textAlign: TextAlign.center,),),
//       ListTile(title:Text('2',textAlign: TextAlign.center),),
//       ListTile(title:Text('3',textAlign: TextAlign.center),),
//       ListTile(title:Text('4',textAlign: TextAlign.center),),
//       ListTile(title:Text('5',textAlign: TextAlign.center),),
//       ListTile(title:Text('6',textAlign: TextAlign.center),),
//       ListTile(title:Text('7',textAlign: TextAlign.center),),
//       ListTile(title:Text('8',textAlign: TextAlign.center),),
//       ListTile(title:Text('9',textAlign: TextAlign.center),),
//       ListTile(title:Text('101',textAlign: TextAlign.center),),
//     ],
//   );
// }
// // Widget gridViewBuild(){
// //   return GridView.builder(
// //     // itemCount: List.length,循环次数
// //     //SliverGridDelegateWithFixedCrossAxisCount ==gridView.count
// //     //   SliverGridDelegateWithFixedCrossAxisCount(
// //     //     mainAxisSpacing: 10, 水平间距
// //     //     crossAxisSpacing: 10, 垂直间距
// //     //     crossAxisCount: 10, 一行个数
// //     //       childAspectRatio: 0.2 宽高比
// //     //
// //     //   )
// //     //SliverGridDelegateWithMaxCrossAxisExtent  ==gridView.extent
// //     //   SliverGridDelegateWithMaxCrossAxisExtent(
// //     //     maxCrossAxisExtent: 180,
// //     //   )
// //       gridDelegate:
// //       // SliverGridDelegateWithFixedCrossAxisCount(
// //       //itemC
// //         //   mainAxisSpacing: 10, 水平间距
// //         //   crossAxisSpacing: 10, 垂直间距
// //         //   crossAxisCount: 10, 一行个数
// //         //     childAspectRatio: 0.2 宽高比
// //         //
// //         // )
// //       ,
// //       itemBuilder:(context,index){
// //
// //         return
// //       }
// //   );
// // }




import 'package:data_table_2/data_table_2.dart';



const String initialRoute = '/datatable2';

Scaffold _getScaffold(BuildContext context, Widget body,
    [List<String>? options]) {
  var defaultOption = getCurrentRouteOption(context);
  if (defaultOption.isEmpty && options != null && options.isNotEmpty) {
    defaultOption = options[0];
  }
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey[200],
      shadowColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
            color: Colors.grey[850],
            //screen selection
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_forward),
              dropdownColor: Colors.grey[800],
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
              value: _getCurrentRoute(context),
              onChanged: (v) {
                Navigator.of(context).pushNamed(v!);
              },
              items: const [
                DropdownMenuItem(
                  value: '/datatable2',
                  child: Text('DataTable2'),
                ),
                DropdownMenuItem(
                  value: '/datatable2simple',
                  child: Text('Simple'),
                ),
                DropdownMenuItem(
                  value: '/datatable2scrollup',
                  child: Text('Scroll-up/Scroll-left'),
                ),
                DropdownMenuItem(
                  value: '/datatable2fixedmn',
                  child: Text('Fixed Rows/Cols'),
                ),
                DropdownMenuItem(
                  value: '/paginated2',
                  child: Text('PaginatedDataTable2'),
                ),
                DropdownMenuItem(
                  value: '/asyncpaginated2',
                  child: Text('AsyncPaginatedDataTable2'),
                ),
                DropdownMenuItem(
                  value: '/datatable',
                  child: Text('DataTable'),
                ),
                DropdownMenuItem(
                  value: '/paginated',
                  child: Text('PaginatedDataTable'),
                ),
                if (kDebugMode)
                  DropdownMenuItem(
                    value: '/datatable2tests',
                    child: Text('Unit Tests Preview'),
                  ),
              ],
            )),
        options != null && options.isNotEmpty
            ? Flexible(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
                    child: DropdownButton<String>(
                        icon: const SizedBox(),
                        dropdownColor: Colors.grey[300],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black),
                        value: defaultOption,
                        onChanged: (v) {
                          var r = _getCurrentRoute(context);
                          Navigator.of(context).pushNamed(r, arguments: v);
                        },
                        items: options
                            .map<DropdownMenuItem<String>>(
                                (v) => DropdownMenuItem<String>(
                              value: v,
                              child: Text(v),
                            ))
                            .toList()))))
            : const SizedBox()
      ]),
    ),
    body: body,
  );
}

String _getCurrentRoute(BuildContext context) {
  return ModalRoute.of(context) != null &&
      ModalRoute.of(context)!.settings.name != null
      ? ModalRoute.of(context)!.settings.name!
      : initialRoute;
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'main',
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey[300],
      ),
      initialRoute: initialRoute,

      routes: {
        '/datatable2': (context) => _getScaffold(
            context, const DataTable2Demo(), getOptionsForRoute('/datatable2')),
        '/datatable2simple': (context) =>
            _getScaffold(context, const DataTable2SimpleDemo()),
        '/datatable2scrollup': (context) =>
            _getScaffold(context, const DataTable2ScrollupDemo()),
        '/datatable2fixedmn': (context) => _getScaffold(
            context,
            const DataTable2FixedNMDemo(),
            getOptionsForRoute('/datatable2fixedmn')),
        '/paginated2': (context) => _getScaffold(context,
            const PaginatedDataTable2Demo(), getOptionsForRoute('/paginated2')),
        '/asyncpaginated2': (context) => _getScaffold(
            context,
            const AsyncPaginatedDataTable2Demo(),
            getOptionsForRoute('/asyncpaginated2')),
        '/datatable': (context) => _getScaffold(context, const DataTableDemo()),
        '/paginated': (context) =>
            _getScaffold(context, const PaginatedDataTableDemo()),
        '/datatable2tests': (context) =>
            _getScaffold(context, const DataTable2Tests()),
      },
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const [
        Locale('en', ''),
        Locale('be', ''),
        Locale('ru', ''),
        Locale('fr', ''),
      ],
      // change to see how PaginatedDataTable2 controls (e.g. Rows per page) get translated
      locale: const Locale('en', ''),
    );
  }
}

