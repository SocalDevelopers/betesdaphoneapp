import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ministerios_betesda/components/custom_bottom_app_bar.dart';

class MinisteriosDescription extends StatelessWidget {
  final String imageUrl;
  final String ministerioTitulo;
  final String ministerioSubtitulo;
  final String description;
  final int phone;
  final String email;

  MinisteriosDescription(
      {this.ministerioTitulo,
      this.ministerioSubtitulo,
      this.imageUrl,
      this.description,
      this.phone,
      this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ministerioTitulo),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(child: Icon(FontAwesomeIcons.phone)),
              Expanded(child: Icon(Icons.email)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Hero(tag: ministerioTitulo, child: Image.network(imageUrl)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Container()),
              Expanded(child: Icon(FontAwesomeIcons.youtube)),
              Expanded(child: Icon(FontAwesomeIcons.facebook)),
              Expanded(child: Icon(FontAwesomeIcons.googlePlus)),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(ministerioSubtitulo),
          SizedBox(
            height: 20,
          ),
          Text(description),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
