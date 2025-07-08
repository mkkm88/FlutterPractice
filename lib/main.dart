import 'package:flutter/foundation.dart';
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
  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey, title: Text('Appbar')),
        body: Center(
          child: Checkbox(
            value: cbool,
            onChanged: (bool? cb) {
              setState(() {
                cbool = cb ?? false;
                if (kDebugMode) {
                  print(cbool);
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
