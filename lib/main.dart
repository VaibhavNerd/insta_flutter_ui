import 'package:flutter/material.dart';

import 'package:insta_flutter/pages/activity_page.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:insta_flutter/pages/home_page.dart';
import 'package:insta_flutter/pages/root_app.dart';
import 'package:insta_flutter/pages/sign_in_page.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {





  @override
  Widget build(BuildContext context) {

    return SplashScreen(

      seconds: 5,
      backgroundColor: Colors.white,

      image: Image.network(
          "https://i.ibb.co/tCWs4sT/Instagram-app-logo.jpg"),
      loaderColor: Colors.white,
      photoSize: 160,
      navigateAfterSeconds: SignInPage(),
    );
  }
}
