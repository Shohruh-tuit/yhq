import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yhq/cards/Card_1/inCards/inCard_1-1.dart';
import 'package:yhq/cards/Card_2/inCards/inCard_2-1.dart';
import 'package:yhq/constants/colors.dart';
import 'package:yhq/utilities/utility_sharedpref.dart';

class Card2 extends StatefulWidget {
  static final String id = "card_2";

  @override
  _Card2State createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: Text(
          "Ogohlantiruvchi belgilar",
        ),
      ),
      body: Container(
        color: HexColor("F2F6F9"),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Ogohlantiruvchi_belgilar')
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return ListView.builder(
              itemCount: 46, // number of list
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
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
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: InkWell(
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,

                        // margin: EdgeInsets.only(bottom: 8),
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data.docs[index]['imageUrl'],
                          placeholder: (context, url) =>
                              CircularProgressIndicator(
                            backgroundColor: green_color,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: green_color,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 8),
                        child: Text(
                          snapshot.data.docs[index]['post_number'].toString() +
                              "-belgi",
                          style: TextStyle(
                              color: green_color,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          snapshot.data.docs[index]['post'].toString().length >
                                  30
                              ? snapshot.data.docs[index]['post']
                                      .toString()
                                      .substring(0, 30) +
                                  "..."
                              : snapshot.data.docs[index]['post'].toString(),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InCard2(index)));
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
