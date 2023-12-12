import 'package:flutter/material.dart';
import 'package:lean_flutter/homePage/home.dart';
import 'package:lean_flutter/login.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  String? routeName;
  // routeName = routeBeforeHook(settings);
  return MaterialPageRoute(builder: (context) {
    /// 注意：如果路由的形式为: '/a/b/c'
    /// 那么将依次检索 '/' -> '/a' -> '/a/b' -> '/a/b/c'
    /// 所以，我这里的路由命名避免使用 '/xxx' 形式
    switch (settings.name) {
      case "/":
        return home();
      case "login":
        return login();
      default:
        return Scaffold(
          body: Center(
            child: Text("页面不存在"),
          ),
        );
    }
  });
}

// String? routeBeforeHook(RouteSettings settings) {
//   /// Global.prefs 是全局的 SharedPreferences 实例
//   /// SharedPreferences 是常用的本地存储的插件
//   final token = Global.prefs.getString('token') ?? '';
//   if (token != '') {
//     if (settings.name == 'login') {
//       return 'index';
//     }
//     return settings.name;
//   }
//   return 'login';
// }
