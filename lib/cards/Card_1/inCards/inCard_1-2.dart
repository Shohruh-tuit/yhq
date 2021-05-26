import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';

class InCard1_2 extends StatefulWidget {
  static final String id = "inCard_1-2";

  final int index;
  InCard1_2(this.index, {Key key}) : super(key: key);

  @override
  _InCard1_2State createState() => _InCard1_2State();
}

class _InCard1_2State extends State<InCard1_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue_color,
        title: Text("Haydovchilarning umumiy majburiyatlari"),
      ),
      body: ListView(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('Haydovchilarning_umumiy_majburiyatlari')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Text("Loading data.. Please wait..");
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data.docs[widget.index]['post_number']
                              .toString() +
                          "-qoida",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: blue_color),
                    ),
                    SizedBox(height: 12),
                    Text(
                      snapshot.data.docs[widget.index]['post'],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          textBaseline: TextBaseline.alphabetic),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
