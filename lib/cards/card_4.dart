import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';

class Card4 extends StatefulWidget {
  static final String id = "card_4";
  @override
  _Card4State createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: Center(
        child: Text("Card 4"),
      ),
    );
  }
}
