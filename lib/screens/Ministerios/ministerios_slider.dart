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
        return Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MinisteriosDescription(
                        imageUrl: slider.sliderContent[index].imagesrc,
                        ministerioSubtitulo:
                            slider.sliderContent[index].subTitle,
                        ministerioTitulo: slider.sliderContent[index].title,
                      );
                    }));
                  },
                  child: Card(
                    elevation: 15,
                    child: Column(
                      children: <Widget>[
                        Image.network(slider.sliderContent[index].imagesrc),
                        Text(slider.sliderContent[index].title),
                        Text(slider.sliderContent[index].subTitle),
                      ],
                    ),
                    color: Colors.white.withOpacity(.2),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );
  }
}
