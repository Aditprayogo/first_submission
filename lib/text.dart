import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  final List<Map<String, Object>> texts;
  final int textIndex;

  TextList(this.texts, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        texts[textIndex]['text'],
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
