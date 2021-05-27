import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';

class InCard2 extends StatefulWidget {
  static final String id = "inCard_2";

  final int index;
  InCard2(this.index, {Key key}) : super(key: key);

  @override
  _InCard2State createState() => _InCard2State();
}

class _InCard2State extends State<InCard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: Text("Umumiy qoidalar"),
      ),
      body: ListView(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('Ogohlantiruvchi_belgilar')
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
                          "-belgi",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      snapshot.data.docs[widget.index]['post'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.network(
                          !snapshot.hasData
                              ? Container(
                                  child: Text("aaa"),
                                )
                              : snapshot.data.docs[widget.index]['imageUrl'],
                          fit: BoxFit.contain,
                        ),
                      ),
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
