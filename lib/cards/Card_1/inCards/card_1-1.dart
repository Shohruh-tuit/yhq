import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart';
import 'package:yhq/cards/Card_1/inCards/inCard_1-1.dart';
import 'package:yhq/constants/colors.dart';

class Card1 extends StatefulWidget {
  static final String id = "card_1";
  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  var number = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue_color,
        title: Text(
          "Yo'l harakati qoidalari",
        ),
      ),
      body: Container(
        color: HexColor("F2F6F9"),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('umumiy_qoidalar')
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "iltimos ma'lumotlarni olish uchun internetingizni yoqing!"),
                    SizedBox(height: 10),
                    CircularProgressIndicator(),
                  ],
                ),
              );
            else
              return Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.04),
                            spreadRadius: 0,
                            blurRadius: 80,
                            offset:
                                Offset(0, 100), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.0327),
                            spreadRadius: 0,
                            blurRadius: 33.4,
                            offset:
                                Offset(0, 41.78), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.0288),
                            spreadRadius: 0,
                            blurRadius: 17.87,
                            offset:
                                Offset(0, 22.34), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.026),
                            spreadRadius: 0,
                            blurRadius: 10.02,
                            offset:
                                Offset(0, 12.52), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.0229),
                            spreadRadius: 0,
                            blurRadius: 5.32,
                            offset:
                                Offset(0, 6.65), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.0176),
                            spreadRadius: 0,
                            blurRadius: 2.21,
                            offset:
                                Offset(0, 2.77), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: InkWell(
                        child: ListTile(
                          trailing: Icon(
                            Icons.chevron_right,
                            color: blue_color,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              snapshot.data.docs[index]['post_number']
                                      .toString() +
                                  "-qoida",
                              style: TextStyle(
                                  color: blue_color,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ),
                          subtitle: Text(
                            snapshot.data.docs[index]['post']
                                    .toString()
                                    .substring(0, 39) +
                                "...",
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InCard1(index)));
                        },
                      ),
                    );
                  },
                ),
              );
          },
        ),
      ),
    );
  }
}
