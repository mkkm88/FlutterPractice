// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_practice/otherpages.dart'; // Ensure this file exists

void main() {
  runApp(const MyApp());
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
      // The Navigator is created by MaterialApp.
      // We need a context that is a descendant of this Navigator.
      // Wrapping the home Scaffold in a Builder provides such a context.
      home: Builder(
        builder: (BuildContext builderContext) {
          // Use builderContext for Navigator operations
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              title: const Text('Drawer Example'), // Changed title for clarity
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero, // Remove default ListView padding
                children: <Widget>[
                  // UserAccountsDrawerHeader for the drawer header
                  const UserAccountsDrawerHeader(
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
                  // ListTile for navigating to Page 1
                  ListTile(
                    title: const Text('Page 1'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Use builderContext for Navigator operations
                      Navigator.of(builderContext).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OtherPages('Page 1'),
                        ),
                      );
                    },
                  ),
                  // ListTile for navigating to Page 2
                  ListTile(
                    title: const Text('Page 2'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Use builderContext for Navigator operations
                      Navigator.of(builderContext).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OtherPages('Page 2'),
                        ),
                      );
                    },
                  ),
                  // ListTile for closing the drawer
                  ListTile(
                    title: const Text(
                      'Close Drawer',
                    ), // Changed text for clarity
                    trailing: const Icon(Icons.close),
                    onTap: () {
                      // Use builderContext for Navigator operations to pop the drawer
                      Navigator.pop(builderContext);
                    },
                  ),
                ],
              ),
            ),
            body: const Center(
              child: Text('Tap the drawer icon to open the navigation drawer!'),
            ),
          );
        },
      ),
    );
  }
}
