import 'package:flutter/material.dart';
import 'package:lean_flutter/login.dart';
import 'package:lean_flutter/homePage/home.dart';
import 'package:lean_flutter/router/ongen_router.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first_demo',
      // home:Test(),
      initialRoute: "/",
      routes: {
        "/": (context) => login(),
        "/home": (context) => home(),
      },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
