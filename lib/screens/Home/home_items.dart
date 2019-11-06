import 'package:flutter/material.dart';
import 'package:deck_scrollview/deck_scroll_view.dart';
import 'package:deck_scrollview/deck_viewport.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> IMAGES = [
  "https://img.xjh.me/desktop/bg/acg/62519151_p0.jpg",
  "https://img.xjh.me/desktop/bg/acg/63788867_p0.jpg",
  "https://img.xjh.me/desktop/bg/acg/60752300_p0.jpg",
  "https://img.xjh.me/desktop/bg/acg/57970506_p0.jpg",
  "https://img.xjh.me/desktop/bg/nature/64639895_p0.jpg",
  "https://img.xjh.me/desktop/bg/nature/57817236_p0.jpg",
  "https://img.xjh.me/desktop/bg/nature/63958512_p0.jpg",
  "https://img.xjh.me/desktop/bg/nature/61516978_p0.jpg",
  "https://img.xjh.me/desktop/bg/nature/63597353_p0.jpg",
];

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageList =
      List.generate(20, (int index) => IMAGES[index % IMAGES.length]);

  @override
  Widget build(BuildContext context) {
    return DeckScrollView.useDelegate(
      layoutPow: 5.0,
      itemExtent: 250,
      childDelegate: DeckChildBuilderDelegate(
          builder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 3, color: Color(0x44000000))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Image.network(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
          childCount: imageList.length),
    );
  }
}

//ConstrainedBox(
//      child: Swiper(
//        outer: false,
//        itemBuilder: (c, i) {
//          return Wrap(
//            runSpacing: 6.0,
//            children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) {
//              return SizedBox(
//                width: MediaQuery.of(context).size.width / 5,
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: <Widget>[
//                    SizedBox(
//                      child: Container(
//                        child: Image.network(
//                            "https://fuss10.elemecdn.com/c/db/d20d49e5029281b9b73db1c5ec6f9jpeg.jpeg%3FimageMogr/format/webp/thumbnail/!90x90r/gravity/Center/crop/90x90"),
//                      ),
//                      height: MediaQuery.of(context).size.width * 0.12,
//                      width: MediaQuery.of(context).size.width * 0.12,
//                    ),
//                    Padding(
//                      padding: EdgeInsets.only(top: 6.0),
//                      child: Text("$i"),
//                    ),
//                  ],
//                ),
//              );
//            }).toList(),
//          );
//        },
//        pagination: SwiperPagination(margin: EdgeInsets.all(5.0)),
//        itemCount: 8,
//        scrollDirection: Axis.vertical,
//      ),
//      constraints: BoxConstraints.loose(
//        Size(
//          MediaQuery.of(context).size.width * 0.7,
//          MediaQuery.of(context).size.width * 0.5,
//        ),
//      ),
//    );
