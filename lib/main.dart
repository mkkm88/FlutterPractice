import 'package:flutter/material.dart';
// import 'package:flutter_practice/otherpages.dart'; // Removed as it's not used in this version

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Method to show a SnackBar.
  // This method now takes a BuildContext which will be provided by a Builder widget.
  void showMySnackBar(BuildContext context) {
    // Ensure the context used here is a descendant of ScaffoldMessenger.
    // The Builder widget below ensures this.
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Activated SnackBar')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      // The ScaffoldMessenger is provided by MaterialApp.
      // To access it from within the Scaffold's children,
      // we need a context that is below MaterialApp.
      // A Builder widget provides such a context.
      home: Builder(
        builder: (BuildContext builderContext) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              title: const Text(
                'SnackBar Example',
              ), // Updated title for clarity
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Tap the button to activate the SnackBar!'),
                  const SizedBox(height: 20), // Add some spacing
                  ElevatedButton(
                    onPressed: () {
                      // Pass the builderContext to showMySnackBar.
                      // This context is guaranteed to be a descendant of ScaffoldMessenger.
                      showMySnackBar(builderContext);
                    },
                    child: const Text('Activate SnackBar'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
