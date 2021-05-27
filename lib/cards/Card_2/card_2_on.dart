import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-1.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-2.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-3.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-4.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-5.dart';
import 'package:yhq/constants/colors.dart';

import 'inCards/card_2-1.dart';

class Card_2_on extends StatefulWidget {
  static final String id = "card_2_on";

  @override
  _Card_2_onState createState() => _Card_2_onState();
}

class _Card_2_onState extends State<Card_2_on> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor1,
      appBar: AppBar(
        backgroundColor: green_color,
        title: Text(
          "card_2_title",
        ).tr(),
      ),
      body: Container(
        child: ListView(
          children: [
            _card(
              "I-bo'lim",
              "Ogohlantiruvchi belgilar",
              "assets/images/card_2/Card2.png",
              Card2.id,
            ),
            _card(
              "II-bo'lim",
              "Imtiyoz belgilari",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "III-bo'lim",
              "Taqiqlovchi belgilar",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "IV-bo'lim",
              "Buyuruvchi belgilar",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "V-bo'lim",
              "Axborot-ko‘rsatgich belgilari",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "VI-bo'lim",
              "Servis belgilari",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "VII-bo'lim",
              "Qo‘shimcha axborot belgilari",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "",
              "Transport svetoforlari",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
            _card(
              "",
              "Piyodalar svetoforlari",
              "assets/images/card_2/Card2.png",
              Card1_2.id,
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(text1, text2, image, route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.04),
                spreadRadius: 0,
                blurRadius: 80,
                offset: Offset(0, 100), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.0327),
                spreadRadius: 0,
                blurRadius: 33.4,
                offset: Offset(0, 41.78), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.0288),
                spreadRadius: 0,
                blurRadius: 17.87,
                offset: Offset(0, 22.34), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.026),
                spreadRadius: 0,
                blurRadius: 10.02,
                offset: Offset(0, 12.52), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.0229),
                spreadRadius: 0,
                blurRadius: 5.32,
                offset: Offset(0, 6.65), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.0176),
                spreadRadius: 0,
                blurRadius: 2.21,
                offset: Offset(0, 2.77), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 18),
                Expanded(
                  child: Text(
                    text2.toString().length > 80
                        ? text2.toString().substring(0, 80) + "..."
                        : text2,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 1.2,
                        height: 1.2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
