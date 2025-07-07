import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('List Widget')),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('List 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('List 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('List 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
