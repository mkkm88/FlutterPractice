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

  int rvalue = 0;

  void method1(value) {
    setState(() {
      rvalue = value;
      if (kDebugMode) {
        print(rvalue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey, title: Text('Appbar')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 1,
                groupValue: rvalue,
                onChanged: (int? rval) {
                  method1(rval);
                },
              ),
              Radio(
                value: 2,
                groupValue: rvalue,
                onChanged: (int? rval) {
                  method1(rval);
                },
              ),
              Radio(
                value: 3,
                groupValue: rvalue,
                onChanged: (int? rval) {
                  method1(rval);
                },
              ),
              Radio(
                value: 4,
                groupValue: rvalue,
                onChanged: (int? rval) {
                  method1(rval);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
