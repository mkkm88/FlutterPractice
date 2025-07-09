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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey, title: Text('Drawer')),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Mohd Kasim'),
                accountEmail: Text('dummy@kasim.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Text('MK'),
                ),
                decoration: BoxDecoration(color: Colors.orange),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: Text('KK'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: Text('SK'),
                  ),
                ],
              ),
              ListTile(
                title: Text('Page 1'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text('Page 2'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text('Close'),
                trailing: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
