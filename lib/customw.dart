import 'package:flutter/material.dart';

class CustomWidgets extends StatefulWidget {
  const CustomWidgets({super.key});

  @override
  State<CustomWidgets> createState() => _CustomWidgetsState();
}

class _CustomWidgetsState extends State<CustomWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Container(
        color: Colors.orange,
        margin: EdgeInsets.all(15.0),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.all(15.0),
          child: Container(
            color: Colors.blue,
            margin: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(15.0),
              child: _methodCustom(),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _methodCustom() {
  return Container(color: Colors.purple, margin: EdgeInsets.all(15.0));
}
