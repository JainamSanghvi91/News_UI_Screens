import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/screens/home_page.dart';
import 'package:news/screens/user_profile.dart';
import 'package:news/screens/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
      routes: {
        HomePageScreen.routename: (ctx) => HomePageScreen(),
        UserProfileScreen.routename: (ctx) => UserProfileScreen(),
        VideoPage.routename: (ctx) => VideoPage(),
      },
    );
  }
}
