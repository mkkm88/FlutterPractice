import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      // The Builder widget provides a BuildContext (builderContext)
      // that is a descendant of MaterialApp and its MaterialLocalizations.
      home: Builder(
        builder: (BuildContext builderContext) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              title: const Text(
                'Alert Dialog Example',
              ), // Updated title for clarity
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Pass the builderContext to the _dialogBuilder function.
                  // This ensures that showDialog has access to MaterialLocalizations.
                  _dialogBuilder(builderContext);
                },
                child: const Text(
                  'Activate AlertDialog',
                ), // Added const for optimization
              ),
            ),
          );
        },
      ),
    );
  }
}

// Function to build and show the AlertDialog
Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context, // Use the context passed from the Builder widget
    builder: (BuildContext dialogContext) {
      // Use a new context for the dialog's content
      return AlertDialog(
        title: const Text('Basic dialog title'),
        content: const Text(
          'A dialog is a type of modal window that\n'
          'appears in front of app content to\n'
          'provide critical information, or prompt\n'
          'for a decision to be made.',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              // Accessing Theme.of(context) inside the dialog's builder
              // is safe because dialogContext is a descendant of MaterialApp.
              textStyle: Theme.of(dialogContext).textTheme.labelLarge,
            ),
            child: const Text('Disable'),
            onPressed: () {
              // Navigator.of(dialogContext).pop() to dismiss the dialog
              Navigator.of(dialogContext).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(dialogContext).textTheme.labelLarge,
            ),
            child: const Text('Enable'),
            onPressed: () {
              // Navigator.of(dialogContext).pop() to dismiss the dialog
              Navigator.of(dialogContext).pop();
            },
          ),
        ],
      );
    },
  );
}
