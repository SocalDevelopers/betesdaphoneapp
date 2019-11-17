import 'package:flutter/material.dart';
import 'package:ministerios_betesda/screens/Ministerios/ministerios_description.dart';
import 'package:ministerios_betesda/screens/Ministerios/ministerios_slider_items.dart';

class MinisteriosSlider extends StatelessWidget {
  final MinisteriosSliderItems slider = MinisteriosSliderItems();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: slider.sliderContent.length,
      itemBuilder: (context, index) {
        return Row(
          children: <Widget>[
            Expanded(
              flex: 15,
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return MinisteriosDescription(
                        imageUrl: slider.sliderContent[index].imagesrc,
                        ministerioSubtitulo:
                            slider.sliderContent[index].subTitle,
                        ministerioTitulo: slider.sliderContent[index].title,
                        description: slider.sliderContent[index].description,
                        phone: slider.sliderContent[index].phone,
                        email: slider.sliderContent[index].email);
                  }));
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    elevation: 10,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        Hero(
                            tag: slider.sliderContent[index].title,
                            child: Image.network(
                                slider.sliderContent[index].imagesrc)),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.4),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topLeft: Radius.circular(8),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 60, bottom: 10),
                          width: double.infinity,
                          child: Column(
                            children: <Widget>[
                              Text(slider.sliderContent[index].title),
                              Text(slider.sliderContent[index].subTitle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white.withOpacity(.2),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 1,
                          color: Colors.blue,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
