class LandingPageModel {
  final String title;
  final String subTitle;
  LandingPageModel({this.title, this.subTitle});
}

class LandingPageInfo {
  List<LandingPageModel> landingInfo = [
    LandingPageModel(title: 'Eventos', subTitle: 'fechas y tiempo'),
    LandingPageModel(title: 'Ministerios', subTitle: 'Lista de ministerios'),
    LandingPageModel(title: 'Sermones', subTitle: 'Lista de sermones'),
    LandingPageModel(title: 'Contacto', subTitle: 'Lista de Cotacto')
  ];
}
