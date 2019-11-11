import 'package:flutter/material.dart';

class MinisteriosDescription extends StatelessWidget {
  final String imageUrl;
  final String ministerioTitulo;
  final String ministerioSubtitulo;
  MinisteriosDescription(
      {this.ministerioTitulo, this.ministerioSubtitulo, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(ministerioTitulo),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Image.network(imageUrl),
            ),
            Text(ministerioSubtitulo),
          ],
        ));
  }
}
