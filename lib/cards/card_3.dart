import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';

class Card3 extends StatefulWidget {
  static final String id = "card_3";
  @override
  _Card3State createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: Center(
        child: Text("Card 3"),
      ),
    );
  }
}
