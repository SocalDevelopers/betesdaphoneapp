import 'package:flutter/material.dart';

class Slider {
  Slider({this.imagesrc, this.title, this.subTitle, this.description});
  String imagesrc;
  String title;
  String subTitle;
  String description;
}

class SliderItems {
  List<Slider> sliderContent = [
    Slider(
      imagesrc:
          'https://images.unsplash.com/photo-1504700610630-ac6aba3536d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      title: 'Caballeros',
      subTitle: 'sergio cruz',
    ),
    Slider(
      imagesrc:
          'https://images.unsplash.com/photo-1474524955719-b9f87c50ce47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      title: 'Media',
      subTitle: 'Walter',
    ),
    Slider(
      imagesrc:
          'https://images.unsplash.com/photo-1526749837599-b4eba9fd855e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      title: 'Familia',
      subTitle: 'Victor',
    ),
  ];
}
