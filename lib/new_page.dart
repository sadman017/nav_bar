import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage ({super.key, required this.title});
  final String title;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:  Center(
        child: Text(title)),
    );
  }
}