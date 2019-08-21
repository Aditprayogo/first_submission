import 'package:flutter/material.dart';

import './text.dart';

class TextControll extends StatelessWidget {
  final int textIndex;
  final Function changeText;

  TextControll(this.textIndex, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          padding: EdgeInsets.all(10),
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          textColor: Colors.orangeAccent,
          child: Text('Change Text'),
          splashColor: Colors.purple,
          onPressed: changeText),
    );
  }
}
