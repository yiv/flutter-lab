import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("APP"),),
        body: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "可输入文本"
          ),
        ),
      ),
    );
  }
}
