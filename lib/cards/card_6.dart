import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';

class Card6 extends StatefulWidget {
  static final String id = "card_6";
  @override
  _Card6State createState() => _Card6State();
}

class _Card6State extends State<Card6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple_color,
      ),
      body: Center(
        child: Text("Card 6"),
      ),
    );
  }
}
