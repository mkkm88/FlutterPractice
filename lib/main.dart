import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  String mtext = '';

  void methodl(value) {
    setState(() {
      mtext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey, title: Text('Appbar')),
        body: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                methodl('You pressed elevated button');
              },
              child: Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {
                methodl('You pressed text button');
              },
              child: Text('Text Button'),
            ),
            Text(mtext),
          ],
        ),
      ),
    );
  }
}
