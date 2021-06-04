import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:telephony/telephony.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';

class SendSms extends StatefulWidget {
  @override
  _SendSmsState createState() => new _SendSmsState();
}

final Telephony telephony = Telephony.instance;

class _SendSmsState extends State<SendSms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: FlatButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                onPressed: () async {
                  telephony.sendSms(
                    to: "+998915055601",
                    message: "01M670UA AAC5777684",
                    statusListener: listener,
                  );
                },
                child: Text(
                  "Jarimani tekshirish",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final SmsSendStatusListener listener = (SendStatus status) {
    return Fluttertoast.showToast(
      msg: "Sms jo'natildi javobni kuting",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  };
}
