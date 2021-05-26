import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';

class Card5 extends StatefulWidget {
  static final String id = "card_5";
  @override
  _Card5State createState() => _Card5State();
}

class _Card5State extends State<Card5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: Center(
        child: Text("Card 5"),
      ),
    );
  }
}
