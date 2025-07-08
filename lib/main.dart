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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey, title: Text('Appbar')),
        body: Column(
          children: <Widget>[
            TextField(
              /*onChanged: (String txt) {
                setState(() {
                  mtext = txt;
                });
              },*/
              onSubmitted: (String txt) {
                setState(() {
                  mtext = txt;
                });
              },
              decoration: InputDecoration(
                hintText: 'Type here...',
                labelText: 'Fullname',
              ),
            ),
            Text(mtext),
          ],
        ),
      ),
    );
  }
}
