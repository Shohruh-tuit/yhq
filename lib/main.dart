import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-1.dart';
import 'package:yhq/cards/Card_1/card_1_on.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-2.dart';
import 'package:yhq/cards/Card_1/inCards/card_1-5.dart';
import 'package:yhq/cards/Card_1/inCards/inCard_1-2.dart';
import 'package:yhq/cards/Card_1/inCards/inCard_1-5.dart';
import 'package:yhq/cards/Card_2/card_2_on.dart';
import 'package:yhq/cards/Card_2/inCards/card_2-1.dart';
import 'package:yhq/cards/Card_2/inCards/inCard_2-1.dart';
import 'package:yhq/cards/card_3.dart';
import 'package:yhq/cards/card_4.dart';
import 'package:yhq/cards/card_5.dart';
import 'package:yhq/cards/card_6.dart';
import 'package:yhq/cards/Card_1/inCards/inCard_1-1.dart';
import 'package:yhq/drawer/drawer_Pages/settings_page.dart';
import 'package:yhq/home/home_page.dart';
import 'package:yhq/pages/basic_page.dart';
import 'package:yhq/pages/favourite_page.dart';
import 'package:yhq/pages/video_page.dart';
import 'package:yhq/routes/routes.dart';
import 'cards/Card_1/inCards/card_1-3.dart';
import 'cards/Card_1/inCards/card_1-4.dart';
import 'cards/Card_1/inCards/inCard_1-3.dart';
import 'cards/Card_1/inCards/inCard_1-4.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('uz', 'UZ'),
        Locale('en', 'US'),
      ],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('uz', 'UZ'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 2 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Splash(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              fontFamily: 'Heebo-Regular',
            ),
          );
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            theme: new ThemeData(scaffoldBackgroundColor: HexColor('F2F6F9')),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: HomePage(),
            routes: {
              HomePage.id: (context) => HomePage(),
              BasicPage.id: (context) => BasicPage(),
              VideoPage.id: (context) => VideoPage(),
              FavouritePage.id: (context) => FavouritePage(),
              //

              Card_1_on.id: (context) => Card_1_on(),
              Card1.id: (context) => Card1(),
              InCard1.id: (context) => InCard1(0),

              Card1_2.id: (context) => Card1_2(),
              InCard1_2.id: (context) => InCard1_2(0),

              Card1_3.id: (context) => Card1_3(),
              InCard1_3.id: (context) => InCard1_3(0),

              Card1_4.id: (context) => Card1_4(),
              InCard1_4.id: (context) => InCard1_4(0),

              Card1_5.id: (context) => Card1_5(),
              InCard1_5.id: (context) => InCard1_5(0),

              //

              Card_2_on.id: (context) => Card_2_on(),
              Card2.id: (context) => Card2(),
              InCard2.id: (context) => InCard2(0),

              //

              Card3.id: (context) => Card3(),
              Card4.id: (context) => Card4(),
              Card5.id: (context) => Card5(),
              Card6.id: (context) => Card6(),
              Routes.settings: (context) => SettingsPage(),
            },
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          child: Image(
            image: AssetImage("assets/images/Logo.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
