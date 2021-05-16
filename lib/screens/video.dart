import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news/dummy_news_data.dart';
import 'package:news/screens/appdrawer.dart';
import 'package:news/widgets/video_news_items.dart';

import '../utils/size_config.dart';

class VideoPage extends StatelessWidget {
  static final String routename = "/video-page-routes";

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldState,
      drawer: drawer(),
      body: LayoutBuilder(builder: (context, constraints) {
        var maxh = SizeConfig.heightMultiplier * 100;
        var maxw = SizeConfig.widthMultiplier * 100;
        print("video ${maxh} ${maxw}");
        return Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 8 * maxw / 360, bottom: 8 * maxw / 360),
                      width: maxw,
                      color: Colors.teal[900],
                      child: InkWell(
                        onTap: () => _scaffoldState.currentState.openDrawer(),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 30 * maxh / 672,
                            width: 30 * maxw / 360,
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 6 * maxh / 672),
                      padding: EdgeInsets.only(top: 4 * maxh / 672),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[350],
                              offset: Offset(0.0046 * constraints.maxHeight,
                                  0.0046 * constraints.maxHeight),
                              blurRadius: 0.0046 * constraints.maxHeight)
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Videos",
                          style: TextStyle(fontSize: 18 * maxh / 672),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Expanded(
                    flex: 9,
                    child: Container(
                      width: maxw,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/video.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 14 * maxh / 672,
                          left: 8 * maxw / 360,
                          right: 8 * maxw / 360),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "This is the heading of the related new ws this is another",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 13 * maxh / 672,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 8 * maxh / 672,
                          ),
                          Flexible(
                            child: Text(
                              "Date & Time here",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 12 * maxh / 672,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 10 * maxh / 672,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "This is the heading of the related new ws this is another Heading of the",
                              style: TextStyle(
                                  fontSize: 13 * maxh / 672,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 10 * maxh / 672,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // padding: EdgeInsets.only(top: 10),
                              width: maxw,
                              height: 40 * maxh / 672,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.circular(4 * maxh / 672),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[350],
                                    offset: Offset(
                                      0.005 * constraints.maxHeight,
                                      0.0046 * constraints.maxHeight,
                                    ),
                                    blurRadius: 0.0046 * constraints.maxHeight,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Information",
                                  style: TextStyle(
                                      fontSize: 15 * maxh / 672,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                          // Text()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(
                    left: 8 * maxw / 360,
                    right: 8 * maxw / 360,
                    top: 10 * maxh / 672),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return VideoNewsItem(maxh: maxh, maxw: maxw, index: index);
                  },
                  itemCount: Dummy_data.length,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
