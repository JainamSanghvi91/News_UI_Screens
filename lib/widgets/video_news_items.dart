import 'package:flutter/material.dart';
import 'package:news/dummy_news_data.dart';

class VideoNewsItem extends StatelessWidget {
  const VideoNewsItem({
    Key key,
    @required this.maxh,
    @required this.index,
    @required this.maxw,
  }) : super(key: key);

  final double maxh;
  final double maxw;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxh * 0.09,
      margin: EdgeInsets.only(bottom: 24 * maxh / 672),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: maxh * 0.116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3 * maxh / 672),
              ),
              // padding: EdgeInsets.only(top:2,bottom: 2,right: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3 * maxh / 672),
                child: Image.asset(
                  Dummy_data[index].url,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding:
                  EdgeInsets.only(left: 10 * maxw / 360, top: 1 * maxh / 672),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      Dummy_data[index].title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12 * maxh / 672,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.grey[500],
                                  size: 18 * maxh / 672,
                                ),
                                SizedBox(width: 4 * maxw / 360),
                                Text(
                                  Dummy_data[index].date,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12 * maxh / 672),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 80 * maxw / 360,
                              height: 16 * maxh / 672,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.circular(1 * maxh / 672),
                              ),
                              child: Center(
                                child: Text(
                                  "Info",
                                  style: TextStyle(
                                      fontSize: 14 * maxh / 672,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
          // Text(DUMMY_NEWS[index].title)
        ],
      ),
    );
  }
}
