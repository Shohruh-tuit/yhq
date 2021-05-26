import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:yhq/constants/colors.dart';
import 'package:yhq/home/home_page.dart';

class SettingsPage extends StatefulWidget {
  static final String id = "settings_page";

  static const String routeName = '/settings';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // bool status = false;
  void language() {
    if (_radioValue == 1) {
      context.locale = Locale('en', 'US');
    } else if (_radioValue == 0) {
      context.locale = Locale('uz', 'UZ');
    }
  }

  static int _radioValue;

  void _handleRadioValueChange(int value) async {
    await setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
      language();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: primary_color,
        iconTheme: IconThemeData(color: primary_color),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage("assets/images/Group_2.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Setting",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ).tr(),
                            SizedBox(height: 5),
                            Text(
                              "underSetting",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 12),
                            ).tr(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('F2F6F9'),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/images/profile.jpg"),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Masharipov Shohruh",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Driver".tr(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.w100),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NumberOfCar",
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ).tr(),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "01 M 670 UA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: HexColor('7D909B'),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: HexColor('7D909B'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NumberOfTel",
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ).tr(),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "91 975-76-51",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: HexColor('7D909B'),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: HexColor('7D909B'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NumberOfTexPas",
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ).tr(),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "JAMMA18P24595321578",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: HexColor('7D909B'),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: HexColor('7D909B'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage("assets/images/Group_1.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HelpandDiscuss",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ).tr(),
                            SizedBox(height: 5),
                            Text(
                              "underHelpandDiscuss",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 12),
                            ).tr(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('F2F6F9'),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "manyAskQuestion",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ).tr(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: HexColor('7D909B'),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: HexColor('7D909B'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ContactUs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ).tr(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: HexColor('7D909B'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        new Radio(
                          activeColor: HexColor('1AB035'),
                          value: 0,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),
                        new Text(
                          'Lotin',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Row(
                      children: [
                        new Radio(
                          activeColor: HexColor('1AB035'),
                          value: 1,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),
                        new Text(
                          'Кирил',
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, HomePage.id);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: HexColor('1AB035'),
                    ),
                    child: Center(
                      child: Text(
                        "Change",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ).tr(),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
