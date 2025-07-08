import 'package:flutter/material.dart';
import 'package:flutter_practice/customw.dart';

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

  late TabController _tcontorl;
  @override
  void initState() {
    _tcontorl = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Appbar'),
          //centerTitle: true,
          titleSpacing: 80.0,
          elevation: 30.0,
          //toolbarOpacity: 0.5,
          leading: IconButton(
            onPressed: () {
              setState(() {
                mtext = 'This is menu icon button';
              });
            },
            icon: Icon(Icons.menu),
          ),
        ),
        body: CustomWidgets(),
      ),
    );
  }
}
