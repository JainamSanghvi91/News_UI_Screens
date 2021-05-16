import 'package:flutter/material.dart';
import 'package:news/screens/homepage.dart';
import 'package:news/screens/userprofile.dart';
import 'package:news/screens/video.dart';

import '../utils/size_config.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // bool isauth = false;
    return LayoutBuilder(builder: (context, constraints) {
      print("height is ${constraints.maxHeight}");
      print("width is ${constraints.maxWidth}");
      var maxH = SizeConfig.heightMultiplier * 100;
      var maxW = SizeConfig.widthMultiplier * 100;
      return Drawer(
          child: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.teal[900],
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            padding: EdgeInsets.only(top: maxH * 0.012),
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.routename);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: maxW * 0.1, vertical: maxH * 0.009),
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: maxW / 22),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[200],
                  endIndent: maxH * 0.025,
                  indent: maxH * 0.025,
                  thickness: 1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(
                      VideoPage.routename,
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: maxW * 0.1, vertical: maxH * 0.009),
                      child: Text(
                        "Videos",
                        style: TextStyle(fontSize: maxW / 22),
                      )),
                ),
                Divider(
                    color: Colors.grey[200],
                    endIndent: maxH * 0.025,
                    indent: maxH * 0.025,
                    thickness: 1),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(
                      UserProfile.routename,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: maxW * 0.1, vertical: maxH * 0.009),
                    child: Text(
                      "Profile",
                      style: TextStyle(fontSize: maxW / 22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]));
    });
  }
}
