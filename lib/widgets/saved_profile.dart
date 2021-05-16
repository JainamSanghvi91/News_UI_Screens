import 'package:flutter/material.dart';
import 'package:news/model/user.dart';
class SavedProfile extends StatelessWidget {
  const SavedProfile({
    Key key,
    @required this.maxH,
    @required this.maxW,
    @required this.user,
  }) : super(key: key);

  final double maxH;
  final double maxW;
  final User user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: maxH * 16 / 28, maxWidth: maxW),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex:3,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 5 * maxH / 647,),
                      // bottom: 0.5 * maxH / 647),
                  padding: EdgeInsets.fromLTRB(
                      15 * maxW / 360,
                      0,
                      5 * maxW / 360,
                      0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: maxW * 0.022,
                              left: 2),
                          child: Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 10 * maxH / 672,
                                color: Colors.grey[400]),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.all(
                              2 * maxH / 672),
                          child: Text(
                            user.location,
                            maxLines: 3,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12 * maxH / 647),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 1 * maxH / 647),
                  padding: EdgeInsets.fromLTRB(
                      15 * maxW / 360,
                      0,
                      5 * maxW / 360,
                      0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: maxW * 0.022,
                            left: 2 * maxW / 360),
                        child: Text(
                          "Pincode",
                          style: TextStyle(
                              fontSize: 10 * maxH / 672,
                              color: Colors.grey[400]),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            user.pincode,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12 * maxH / 647),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 1 * maxH / 647),
                  padding: EdgeInsets.fromLTRB(
                      15 * maxW / 360,
                      0,
                      5 * maxW / 360,
                      0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: maxW * 0.022,
                            left: 2 * maxW / 360),
                        child: Text(
                          "Date of Birth",
                          style: TextStyle(
                              fontSize: 10 * maxH / 672,
                              color: Colors.grey[400]),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            user.date,
                            maxLines: 3,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12 * maxH / 647),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 1 * maxH / 647),
                  padding: EdgeInsets.fromLTRB(
                      15 * maxW / 360,
                      0,
                      5 * maxW / 360,
                      0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: maxW * 0.022),
                        child: Text(
                          "Gender",
                          style: TextStyle(
                              fontSize: 10 * maxH / 672,
                              color: Colors.grey[400]),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            user.gender,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12 * maxH / 647),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 1 * maxH / 647),
                  padding: EdgeInsets.fromLTRB(
                      15 * maxW / 360,
                      0,
                      5 * maxW / 360,
                      0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: maxW * 0.022),
                          child: Text(
                            "Whatsapp",
                            style: TextStyle(
                                fontSize: 10 * maxH / 672,
                                color: Colors.grey[400]),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            user.phone,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12 * maxH / 647),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 1 * maxH / 647),
                  padding: EdgeInsets.fromLTRB(
                      15 * maxW / 360,
                      0,
                      5 * maxW / 360,
                      0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: maxW * 0.022),
                          child: Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 10 * maxH / 672,
                                color: Colors.grey[400]),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            user.email,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12 * maxH / 647),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}