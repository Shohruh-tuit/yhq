import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yhq/constants/colors.dart';
import 'package:yhq/services/searchservice.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchPage extends StatefulWidget {
  final int index;

  const SearchPage({Key key, this.index}) : super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var queryResultSet = [];
  var tempSearchStore = [];

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
      });
    }

    var capitalizedValue =
        value.substring(0, 1).toUpperCase() + value.substring(1);

    if (queryResultSet.length == 0 && value.length == 1) {
      SearchService().searchByName(capitalizedValue).then(
        (QuerySnapshot snapshot) {
          for (int i = 0; i < snapshot.docs.length; ++i) {
            queryResultSet.add(snapshot.docs[i].data);
            setState(() {
              tempSearchStore.add(queryResultSet[i]);
            });
          }
        },
      );
    } else {
      tempSearchStore = [];
      queryResultSet.forEach((element) {
        if (element['umumiy_qoidalar']('post')
                .toLowerCase()
                .contains(value.toLowerCase()) ==
            true) {
          if (element["umumiy_qoidalar"]('post')
                  .toLowerCase()
                  .indexOf(value.toLowerCase()) ==
              0) {
            setState(() {
              tempSearchStore.add(element);
            });
          }
        }
      });
    }
    if (tempSearchStore.length == 0 && value.length > 1) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 1,
          title: Text("Qidiruv bo'limi"),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (val) {
                initiateSearch(val);
              },
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: primary_color,
                  ),
                  iconSize: 24.0,
                  onPressed: () {},
                ),
                contentPadding: EdgeInsets.only(left: 25.0),
                hintText: 'search'.tr(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              primary: false,
              shrinkWrap: true,
              children: tempSearchStore.map((element) {
                return buildResultCard(element);
              }).toList())
        ]));
  }
}

Widget buildResultCard(data) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2.0,
      child: Container(
          child: Center(
              child: Text(
        data['post'],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ))));
}
