import 'package:flutter/material.dart';
import 'package:ministerios_betesda/components/custom_slider.dart';

class Ministerios extends StatefulWidget {
  @override
  _MinisteriosState createState() => _MinisteriosState();
}

class _MinisteriosState extends State<Ministerios> {
  final controller = PageController();
  SliderItems slider = SliderItems();
  List<SliderItems> items = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: slider.sliderContent.length,
      itemBuilder: (context, index) {
        return Container(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(spreadRadius: 1, blurRadius: 1, color: Colors.black26)
            ]),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Image.network(slider.sliderContent[index].imagesrc),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ListView.builder(
                          itemCount: slider.sliderContent.length + 5,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(top: 13),
                              height: 2,
                              color: Colors.black26,
                            );
                          },
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );
  }
}
