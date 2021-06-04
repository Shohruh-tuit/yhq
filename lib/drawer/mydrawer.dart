import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:yhq/constants/colors.dart';
import 'package:yhq/routes/routes.dart';

class MyDrawer extends StatelessWidget {
  static const _url = 'https://www.facebook.com/technocorpuzb';
  static const _url1 = 'https://www.instagram.com/technocorp.uz/';
  static const _url2 = 'https://t.me/technocorpuz';

  void _launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundcolor1,
        width: 250,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              _createHeader(),
              _createDrawerItem(
                icon: Icons.settings,
                text: 'Setting'.tr(),
                onTap: () => Navigator.pushNamed(context, Routes.settings),
              ),
              _createDrawerItem(
                icon: Icons.notifications,
                text: 'Notification'.tr(),
              ),
              _createDrawerItem(icon: Icons.share, text: 'Share'.tr()),
              _createDrawerItem(icon: Ionicons.ios_warning, text: 'Error'.tr()),
              Divider(),
              _createDrawerItem(icon: Icons.stars, text: 'links'.tr()),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL(_url);
                    },
                    icon: Icon(FontAwesome.facebook),
                    color: Colors.blue[700],
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      _launchURL(_url1);
                    },
                    icon: Icon(FontAwesome.instagram),
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      _launchURL(_url2);
                    },
                    icon: Icon(FontAwesome.telegram),
                    color: Colors.blue[300],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                color: Colors.black,
                width: double.infinity,
                height: 0.1,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Text(
                    "V1.0.0",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ));
  }

  Widget _createHeader() {
    return DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          SizedBox(height: 10),
          Text(
            "Masharipov Shohruh",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                FontAwesome.car,
                color: primary_color,
                size: 16,
              ),
              SizedBox(width: 10),
              Text(
                "01 M 670 UA",
                style: TextStyle(
                    color: primary_color,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
