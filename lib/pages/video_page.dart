import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yhq/models/channel_model.dart';

import 'package:yhq/models/video_model.dart';
import 'package:yhq/pages/screens/build_video.dart';

import 'package:yhq/pages/screens/video_screen.dart';
import 'package:yhq/services/api_service.dart';

class VideoPage extends StatefulWidget {
  static final String id = "video_page";
  static const String routeName = '/video';
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  // Internet checker
  bool _isInternet = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  checkInternet() async {
    try {
      final response = await InternetAddress.lookup('example.com'); // google
      if (response.isNotEmpty && response[0].rawAddress.isNotEmpty) {
        _isInternet = true; // internet
        setState(() {});
      }
    } on SocketException catch (_) {
      _isInternet = false; // no internet
      setState(() {
        _showSnackBar();
      });
    }

    return _isInternet;
  }
  //  Internet checker

  void _showSnackBar() {
    SnackBar snackBar = SnackBar(content: Text('No Connection'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  //

  Channel _channel;

  @override
  void initState() {
    checkInternet();
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    Channel channel = await APIService.instance
        .fetchChannel(channelId: 'UC0eph1IK8ShGqA6pQF8uEsw');
    setState(() {
      _channel = channel;
    });
  }

  _buildProfileInfo() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BuildVideo(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        height: 100.0,
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
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35.0,
              backgroundImage: NetworkImage(_channel.profilePictureUrl),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _channel.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${_channel.subscriberCount} obunachilar',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.redAccent,
        title: Text("Video Bloglar"),
      ),
      body: _isInternet == true
          ? _channel != null
              ? NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollDetails) {
                    return false;
                  },
                  child: Column(
                    children: [
                      _buildProfileInfo(),
                      // _buildProfileInfo1(),
                    ],
                  ))
              : Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor, // Red
                    ),
                  ),
                )
          : Center(
              child: Text('Internetga ulanish mavjud emas'),
            ),
    );
  }
}
