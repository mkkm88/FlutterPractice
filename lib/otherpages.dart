import 'package:flutter/material.dart';

class OtherPages extends StatelessWidget {
  final String mtext;
  const OtherPages(this.mtext, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mtext)),
      body: Center(child: Text(mtext)),
    );
  }
}
