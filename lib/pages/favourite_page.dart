import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  static final String id = "favourite_page";
  static const String routeName = '/favourite';
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: Text("Favourite Page"),
      ),
    );
  }
}
