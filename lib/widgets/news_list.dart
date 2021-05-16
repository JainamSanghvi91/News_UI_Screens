import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:news/dummy_news_data.dart';
import 'package:news/utils/size_config.dart';
import '../dummy_news_data.dart';

class NewsListCard extends StatelessWidget {
  NewsListCard({this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var maxH = SizeConfig.heightMultiplier * 100;
        var maxW = SizeConfig.widthMultiplier * 100;
        return Container(
          margin: EdgeInsets.only(left: 3 * maxW / 360, right: 6 * maxW / 360),
          padding: EdgeInsets.only(left: 4 * maxW / 360, right: 4 * maxW / 360),
          height: maxH * 0.18,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4 * maxW / 360,
                          vertical: 8 * maxH / 647,
                        ),
                        width: maxW * 0.3,
                        height: maxH * 0.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Dummy_data[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 12,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 9 * maxW / 360,
                          top: 8 * maxH / 647,
                          bottom: 8 * maxH / 647,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: AutoSizeText(
                                Dummy_data[index].headline,
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16 * maxH / 647),
                              ),
                            ),
                            SizedBox(
                              height: 2 * maxH / 647,
                            ),
                            Flexible(
                              child: Text(
                                Dummy_data[index].description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey[800],
                                    fontSize: 13 * maxH / 647),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Icon(
                                            Icons.calendar_today,
                                            size: maxH * 0.028,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        FittedBox(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              Dummy_data[index].date,
                                              style: TextStyle(
                                                  fontSize: 12 * maxH / 647,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      height: 20,
                                      margin: EdgeInsets.only(left: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrangeAccent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Sports",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Icon(
                                      Icons.bookmark_border_outlined,
                                      size: maxH * 0.035,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Divider(
              //   thickness: 0,
              //   color: Colors.transparent,
              // )
            ],
          ),
        );
      },
    );
  }
}
