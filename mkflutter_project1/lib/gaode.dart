import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Gaode extends StatelessWidget {
  const Gaode({Key? key}) : super(key: key);
  Future<void> _launchUrl() async {
    const _url = 'http://www.baidu.com/';
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }
  Future<void> _openMap() async {
    const _url = 'geo:52.32,4.917';
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('高德地图'),
        ),
            body: Center(
          child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  _openMap();
              },
                child: Text('打开地图'))
        ],
      ),
      ),
      ),
    );
  }
}
