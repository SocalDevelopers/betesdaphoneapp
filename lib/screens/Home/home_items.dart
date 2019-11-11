import 'package:flutter/material.dart';
import 'package:ministerios_betesda/components/custom_slider.dart';
import 'package:ministerios_betesda/screens/Ministerios/lista_de_ministerios.dart';
import 'package:parallax_image/parallax_image.dart';

class Ministerios extends StatelessWidget {
  SliderItems slider = SliderItems();
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
                      return MinisteriosItems(
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
