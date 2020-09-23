import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("APP"),),
        body: MyButtons(),
      ),
    );
  }
}

class MyButtons extends StatefulWidget {
  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  String _text='edwin';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('#$_text#'),
        TextField(
          decoration: InputDecoration(
            // border: InputBorder.none,
            hintText: "可输入文本",
          ),
          onChanged: (text){
            setState(() {
              _text = text;
            });
            print(text);
          },
        ),
        RaisedButton(onPressed: () {  },child: Text("Raised Button"),),
        FlatButton(onPressed: (){}, child: Text("Flat Button"),),
        OutlineButton(onPressed: () {  }, child: Text("Outline Button"),),
        IconButton(onPressed: () {
          print("icon button on pressed");
        }, icon: Icon(Icons.home)),
      ],
    );
  }
}
