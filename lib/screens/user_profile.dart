import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news/dummy_news_data.dart';
import 'package:news/model/user.dart';
import 'package:news/widgets/edit_profile.dart';
import 'package:news/widgets/saved_profile.dart';
import 'package:news/screens/app_drawer.dart';

import '../utils/size_config.dart';

class UserProfileScreen extends StatefulWidget {
  static final String routename = "/user-profile";

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  User user;
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _forrmkey = GlobalKey();
  bool _isedit = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = User(
        date: '03-07-2020',
        email: 'jainam1224@gmail.com',
        gender: 'Male',
        location:
            '102- Royal Nest, b/h law college, near olpadi mohoala, Athwalines, Surat, Gujarat',
        name: 'Jainam Sanghvi',
        phone: '+91-9173934980',
        pincode: '395007',
        profile: 'assets/images/profile_modi.jpg');
  }

  @override
  Widget build(BuildContext context) {
    void _submit() {
      if (_isedit) {
        if (!_forrmkey.currentState.validate()) {
          return;
        }
        _forrmkey.currentState.save();
        setState(() {
          _isedit = false;
        });
      } else {
        setState(() {
          _isedit = true;
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: _scaffold,
      drawer: AppDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          var maxH = SizeConfig.heightMultiplier * 100;
          var maxW = SizeConfig.widthMultiplier * 100;
          return Container(
            width: maxW,
            child: Column(
              children: [
                Container(
                  height: maxH * 3 / 28,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 8 * maxW / 360, bottom: 8 * maxW / 360),
                    width: maxW,
                    color: Colors.teal[900],
                    child: InkWell(
                      onTap: () => _scaffold.currentState.openDrawer(),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 30 * maxH / 672,
                          width: 30 * maxW / 360,
                          child: Image.asset(
                            "assets/images/Hambur.png",
                            fit: BoxFit.contain,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    height: maxH * 8 / 28,
                    child: Container(
                      width: maxW,
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 52 * maxH / 672,
                            backgroundColor: Colors.deepOrange,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(50 * maxH / 672),
                              child: Image.asset(
                                user.profile,
                                width: 100 * maxW / 360,
                                height: 100 * maxH / 672,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2 * maxH / 672,
                          ),
                          Flexible(
                            child: Text(
                              user.name,
                              style: TextStyle(
                                  fontSize: 17 * maxH / 672,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 10 * maxH / 672,
                          ),
                          InkWell(
                            onTap: _submit,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8 * maxW / 360,
                                  vertical: 2 * maxH / 672),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey[300],
                                      width: 1 * maxW / 360),
                                  top: BorderSide(
                                      color: Colors.grey[300],
                                      width: 1 * maxW / 360),
                                  right: BorderSide(
                                      color: Colors.grey[300],
                                      width: 1 * maxW / 360),
                                  left: BorderSide(
                                      color: Colors.grey[300],
                                      width: 1 * maxW / 360),
                                ),
                              ),
                              child: Text(
                                _isedit ? "Save Profile" : "Edit Profile",
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 10 * maxH / 672),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                  // height: maxH*16/28,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 18 * maxW / 360,
                        right: 24 * maxW / 360,
                        top: 20 * maxH / 672),
                    child: Form(
                      key: _forrmkey,
                      child: _isedit
                          ? EditProfile(maxH: maxH, maxW: maxW, user: user)
                          : SavedProfile(maxH: maxH, maxW: maxW, user: user),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
