

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TheContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          color: Colors.blue[500],
          child: Center(child: Text("hahah")),
        ),
      ),
    );
  }
}
