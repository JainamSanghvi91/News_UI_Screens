import 'package:flutter/material.dart';
import 'package:news/model/user.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({
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
        physics: AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: maxH * 16 / 28, maxWidth: maxW),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 5 * maxH / 647,
                    bottom: 5 * maxH / 647),
                padding: EdgeInsets.fromLTRB(
                    15 * maxW / 360, 0, 5 * maxW / 360, 0),
                child: TextFormField(
                  style:
                      TextStyle(fontSize: 12 * maxH / 647),
                  initialValue: user.location,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: 'Location',
                    labelStyle: TextStyle(
                        fontSize: 13 * maxH / 672,
                        color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.all(4 * maxH / 672),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Location should not be empty";
                    }
                  },
                  onSaved: (value) {
                    user.location = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5 * maxH / 647,
                    bottom: 5 * maxH / 647),
                padding: EdgeInsets.fromLTRB(
                    15 * maxW / 360, 0, 5 * maxW / 360, 0),
                child: TextFormField(
                  style:
                      TextStyle(fontSize: 12 * maxH / 647),
                  initialValue: user.pincode,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Pincode',
                    labelStyle: TextStyle(
                        fontSize: 13 * maxH / 672,
                        color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.all(4 * maxH / 672),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {
                    user.pincode = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5 * maxH / 647,
                    bottom: 5 * maxH / 647),
                padding: EdgeInsets.fromLTRB(
                    15 * maxW / 360, 0, 5 * maxW / 360, 0),
                child: TextFormField(
                  style:
                      TextStyle(fontSize: 12 * maxH / 647),
                  initialValue: user.date,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    labelStyle: TextStyle(
                        fontSize: 13 * maxH / 672,
                        color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.all(4 * maxH / 672),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {
                    user.date = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5 * maxH / 647,
                    bottom: 5 * maxH / 647),
                padding: EdgeInsets.fromLTRB(
                    15 * maxW / 360, 0, 5 * maxW / 360, 0),
                child: TextFormField(
                  style:
                      TextStyle(fontSize: 12 * maxH / 647),
                  initialValue: user.gender,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    labelStyle: TextStyle(
                        fontSize: 13 * maxH / 672,
                        color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.all(4 * maxH / 672),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {
                    user.gender = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5 * maxH / 647,
                    bottom: 5 * maxH / 647),
                padding: EdgeInsets.fromLTRB(
                    15 * maxW / 360, 0, 5 * maxW / 360, 0),
                child: TextFormField(
                  style:
                      TextStyle(fontSize: 12 * maxH / 647),
                  initialValue: user.phone,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Whatsapp',
                    labelStyle: TextStyle(
                        fontSize: 13 * maxH / 672,
                        color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.all(4 * maxH / 672),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {
                    user.phone = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5 * maxH / 647,
                    bottom: 5 * maxH / 647),
                padding: EdgeInsets.fromLTRB(
                    15 * maxW / 360, 0, 5 * maxW / 360, 0),
                child: TextFormField(
                  style:
                      TextStyle(fontSize: 12 * maxH / 647),
                  initialValue: user.email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontSize: 13 * maxH / 672,
                        color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.all(4 * maxH / 672),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {
                    user.email = value;
                  },
                ),
              )
            ],
          ),
        ),
      );
  }
}
