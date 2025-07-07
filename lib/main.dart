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
        appBar: AppBar(title: Text('Welcome to flutter')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('This'), Text('is'), Text('column')],
            ),
            Text('row'),
          ],
        ),
      ),
    );
  }
}
