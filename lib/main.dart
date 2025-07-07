import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Stack Widget')),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Card(
              color: Colors.yellow,
              child: Padding(padding: EdgeInsets.all(200.0)),
            ),
            Card(
              color: Colors.green,
              child: Padding(padding: EdgeInsets.all(100.0)),
            ),
            Card(
              color: Colors.blue,
              child: Padding(padding: EdgeInsets.all(50.0)),
            ),
            Card(
              color: Colors.red,
              child: Padding(padding: EdgeInsets.all(30.0)),
            ),
            Card(
              color: Colors.grey,
              child: Padding(padding: EdgeInsets.all(10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
