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
          backgroundColor: Colors.green,
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
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  mtext = 'This is arrow icon button';
                });
              },
              icon: Icon(Icons.arrow_forward),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  mtext = 'This is close icon button';
                });
              },
              icon: Icon(Icons.close),
            ),
          ],
          bottom: TabBar(
            controller: _tcontorl,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.supervisor_account)),
              Tab(icon: Icon(Icons.close)),
            ],
          ),
        ),
        body: //Center(child: Text(mtext)),
        TabBarView(
          controller: _tcontorl,
          children: <Widget>[
            Center(child: Text('Welcome to Home')),
            Center(child: Text('Welcome to User account')),
            Center(child: Text('Welcome to close page')),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
            controller: _tcontorl,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.arrow_back)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.square_outlined)),
            ],
          ),
        ),
      ),
    );
  }
}
