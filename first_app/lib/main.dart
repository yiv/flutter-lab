

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: Scaffold(
        appBar: AppBar(title: Text("Bar"),),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggests = [];
  final _fontStyle = TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return _buildSuggests();
  }
  Widget _buildSuggests(){
    return ListView.builder(itemBuilder:(ctx, i){
      if (i.isOdd) return Divider();
      final _index = i ~/ 2;
      if (_index >= _suggests.length){
        _suggests.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggests[_index]);
    }
    );
  }
  Widget _buildRow(WordPair pair){
    return ListTile(title: Text(pair.asCamelCase, style: _fontStyle,),);
  }
}
