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

class Card_1_on extends StatefulWidget {
  static final String id = "card_1_on";

  @override
  _Card_1_onState createState() => _Card_1_onState();
}

class _Card_1_onState extends State<Card_1_on> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor1,
      appBar: AppBar(
        backgroundColor: blue_color,
        title: Text(
          "card_1_title",
        ).tr(),
      ),
      body: Container(
        child: ListView(
          children: [
            _card(
              "I-bo'lim",
              "Umumiy qoidalar",
              "assets/images/card_1/Card.png",
              Card1.id,
            ),
            _card(
              "II-bo'lim",
              "Haydovchilarning umumiy majburiyatlari",
              "assets/images/card_1/Card.png",
              Card1_2.id,
            ),
            _card(
              "III-bo'lim",
              "Yo‘l-transport hodisasi sodir bo‘lganda haydovchining majburiyatlari",
              "assets/images/card_1/Card.png",
              Card1_3.id,
            ),
            _card(
              "IV-bo'lim",
              "Piyodalarning majburiyatlari",
              "assets/images/card_1/Card.png",
              Card1_4.id,
            ),
            _card(
              "V-bo'lim",
              "Yo‘lovchilarning majburiyatlari",
              "assets/images/card_1/Card.png",
              Card1_5.id,
            ),
            _card(
              "VI-bo'lim",
              "Maxsus transport vositalarining imtiyozlari",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "VII-bo'lim",
              "Svetofor va tartibga soluvchining ishoralari",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "VIII-bo'lim",
              "Ogohlantiruvchi va avariya ishoralari, avariya sababli to‘xtash belgisining qo‘llanilishi",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "IX-bo'lim",
              "Harakatlanishni boshlash, yo‘nalishlarni o‘zgartirish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "X-bo'lim",
              "Yo‘lning qatnov qismida transport vositalarining joylashuvi",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XI-bo'lim",
              "Harakatlanish tezligi",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XII-bo'lim",
              "Quvib o‘tish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XIII-bo'lim",
              "To‘xtash va to‘xtab turish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XIV-bo'lim",
              "Chorrahada harakatlanish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XV-bo'lim",
              "Tartibga solingan chorrahalar",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XVI-bo'lim",
              "Tartibga solinmagan chorrahalar",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XVII-bo'lim",
              "Piyodalarning o‘tish joylari va yo‘nalishli transport vositalarining bekatlari",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XVIII-bo'lim",
              "Temir yo‘l kesishmalari orqali harakatlanish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XIX-bo'lim",
              "Avtomagistrallarda harakatlanish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XX-bo'lim",
              "Turar joy dahalarida harakatlanish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXI-bo'lim",
              "Tik nishablik va balandliklarda harakatlanish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXII-bo'lim",
              "Yo‘nalishli transport vositalarining imtiyozlari",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXIII-bo'lim",
              "Tashqi yoritish asboblaridan foydalanish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXIV-bo'lim",
              "Mexanik transport vositalarini shatakka olish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXV-bo'lim",
              "Transport vositalarini boshqarishni o‘rgatish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXVI-bo'lim",
              "Odam tashish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXVII-bo'lim",
              "Yuk tashish",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXVIII-bo'lim",
              "Velosiped, moped va aravalar harakatlanishiga, shuningdek hayvonlarni haydab o‘tishga doir qo‘shimcha talablar",
              "assets/images/card_1/Card.png",
              Card1(),
            ),
            _card(
              "XXIX-bo'lim",
              "Mansabdor shaxslarning va fuqarolarning yo‘l harakati xavfsizligini ta’minlash, transport vositalarini yo‘lga chiqarish, raqam va taniqli belgilarini o‘rnatish bo‘yicha majburiyatlari",
              "assets/images/card_1/Card.png",
              Card1(),
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
