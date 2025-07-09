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
  double dtext = 2.0;

  void method1(value) {
    setState(() {
      dtext = value;
      if (kDebugMode) {
        print(dtext);
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
              Slider(
                value: dtext,
                min: 1.0,
                max: 10.0,
                onChanged: (double dval) {
                  method1(dval);
                },
              ),
              Text(' value : $dtext '),
            ],
          ),
        ),
      ),
    );
  }
}
