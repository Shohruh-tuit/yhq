import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:yhq/constants/colors.dart';

class SmS extends StatefulWidget {
  @override
  _SmSState createState() => _SmSState();
}

class _SmSState extends State<SmS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sms"),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: primary_color,
      ),
    );
  }
}
