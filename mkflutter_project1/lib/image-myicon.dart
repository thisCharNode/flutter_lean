import 'package:flutter/material.dart';
import 'package:mkflutter_project1/fonts/alfonts.dart';

class imgeIcon extends StatelessWidget {
  const imgeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Statelesswidget',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('icon'),
            ),
            body: ListView(
              children: const [
                Column(
                  children: [
                    //使用test.jepg
                    Image(width: 50, image: AssetImage('image/test.jpeg')),
                    Icon(aliIcon.server1)
                  ],
                )
              ],
            )));
  }
}
