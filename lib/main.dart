import 'package:flutter/material.dart';

import './textcontroll.dart';
import './text.dart';
import './end.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;

  final _texts = const [
    {'text': 'This is Text One'},
    {'text': 'This is Text Two'},
    {'text': 'This is Text Three'}
  ];

  void _changeText() {
    setState(() {
      _textIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('First Assignment'),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        body: _textIndex < _texts.length
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextList(_texts, _textIndex),
                    TextControll(_textIndex, _changeText),
                  ],
                ),
              )
            : Result(),
      ),
    );
  }
}
