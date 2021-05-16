import 'package:flutter/material.dart';
import 'package:news/dummy_news_data.dart';
import 'package:news/screens/app_drawer.dart';
import 'package:news/widgets/news_list.dart';
import 'package:news/utils/size_config.dart';
import '../utils/size_config.dart';

class HomePageScreen extends StatelessWidget {
  static final String routename = "/home-page-route";
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: AppDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          SizeConfig().init(constraints);
          var maxH = SizeConfig.heightMultiplier * 100;
          var maxW = SizeConfig.widthMultiplier * 100;
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 8 * maxW / 360, bottom: 8 * maxW / 360),
                  width: maxW,
                  color: Colors.teal[900],
                  child: InkWell(
                    onTap: () {
                      _scaffold.currentState.openDrawer();
                    },
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
              Expanded(
                flex: 24,
                child: ListView.builder(
                  itemBuilder: (ctx, i) {
                    return NewsListCard(
                      index: i,
                    );
                  },
                  itemCount: Dummy_data.length,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
