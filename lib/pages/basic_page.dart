import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:yhq/cards/Card_1/card_1_on.dart';
import 'package:yhq/cards/Card_2/card_2_on.dart';
import 'package:yhq/cards/card_3.dart';
import 'package:yhq/cards/card_4.dart';
import 'package:yhq/cards/card_5.dart';
import 'package:yhq/cards/card_6.dart';
import 'package:yhq/constants/colors.dart';
import 'package:yhq/drawer/mydrawer.dart';

class BasicPage extends StatefulWidget {
  const BasicPage({
    Key key,
  }) : super(key: key);
  static final String id = "basic_page";
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List<String> _listItem = [
    "assets/images/browser.jpg",
    "assets/images/traffic-sign.jpg",
    "assets/images/road.jpg",
    "assets/images/driving-test.jpg",
    "assets/images/danger.jpg",
    "assets/images/news.jpg",
  ];

  bool status = false;

  void language() {
    if (status == true) {
      context.locale = Locale('en', 'US');
    } else if (status == false) {
      context.locale = Locale('uz', 'UZ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(98),
        child: Column(
          children: [
            SizedBox(height: 20),
            AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: HexColor('F2F6F9'),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    child: Image(
                      image: AssetImage("assets/images/traffic-r.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "title1",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ).tr(),
                        Text(
                          "title2",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ).tr(),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                new IconButton(
                  icon: Icon(
                    Feather.align_right,
                    size: 34,
                    color: primary_color,
                  ),
                  onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
                ),
              ],

              // actions: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Switch(
              //       value: isSwitched,
              //       onChanged: (value) {
              //         setState(
              //           () {
              //             isSwitched = value;
              //             print(isSwitched);
              //           },
              //         );
              //       },
              //       activeTrackColor: Colors.yellow,
              //       activeColor: Colors.green,
              //     ),
              //     context.locale = Locale('uz', 'UZ');
              //     context.locale = Locale('en', 'US');

              //       // Container(
              //       //   height: 30,
              //       //   width: 30,
              //       //   child: Column(
              //       //     children: <Widget>[
              //       //       ListTile(
              //       //         title: const Text('Lafayette'),
              //       //         leading: Radio(
              //       //           value: status,
              //       //           groupValue: null,
              //       //           onChanged: (val) {
              //       //             setState(() {
              //       //               status = val;
              //       //             });
              //       //           },
              //       //         ),
              //       //       ),
              //       //       ListTile(
              //       //         title: const Text('Thomas Jefferson'),
              //       //         leading: Radio(
              //       //           value: status,
              //       //           groupValue: null,
              //       //           onChanged: (val) {
              //       //             setState(() {
              //       //               status = val;
              //       //             });
              //       //           },
              //       //         ),
              //       //       ),
              //       //     ],
              //       //   ),
              //       // ),

              // Padding(
              //   padding: const EdgeInsets.only(right: 8),
              //   child: FlutterSwitch(
              //     activeText: "O'z",
              //     inactiveText: "Ўзб",
              //     value: status,
              //     valueFontSize: 10.0,
              //     width: 60,
              //     borderRadius: 30.0,
              //     showOnOff: true,
              //     activeColor: Colors.blue,
              //     inactiveColor: primary_color,
              //     onToggle: (val) {
              //       setState(() {
              //         status = val;
              //         language();
              //       });
              //     },
              //   ),
              // ),

              //       // Padding(
              //       //   padding: const EdgeInsets.only(right: 10),
              //       //   child: Icon(
              //       //     FontAwesome.star,
              //       //     color: HexColor('FF9529'),
              //       //     size: 30,
              //       //   ),
              //       // ),
              //     ],
              //   ),
              // ],
            ),
          ],
        ),
      ),
      backgroundColor: HexColor('F2F6F9'),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                    crossAxisSpacing: 12, // cardlar orasida vertical bo'sh joy
                    mainAxisSpacing: 12, // cardlar orasida horizontal bo'sh joy
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    scrollDirection: Axis.vertical, // qator
                    children: [
                      _cardItem(
                        "assets/images/basic_page/01.jpg",
                        "card_1_title",
                        Card_1_on.id,
                      ),
                      _cardItem(
                        "assets/images/basic_page/02.png",
                        "card_2_title",
                        Card_2_on.id,
                      ),
                      _cardItem(
                        "assets/images/basic_page/03.png",
                        "card_3_title",
                        Card3.id,
                      ),
                      _cardItem(
                        "assets/images/basic_page/04.jpg",
                        "card_4_title",
                        Card4.id,
                      ),
                      _cardItem(
                        "assets/images/basic_page/05.png",
                        "card_5_title",
                        Card5.id,
                      ),
                      _cardItem(
                        "assets/images/basic_page/06.png",
                        "card_6_title",
                        Card6.id,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardItem(String picture, String text, String routes) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routes.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(picture),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                alignment: FractionalOffset(0, 1),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    text.tr().length > 24
                        ? text.tr().substring(0, 24) + "..."
                        : text.tr(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
