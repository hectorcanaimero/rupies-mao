import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _myIconsFamily = 'MyIcons';
  static const String _icomoonFamily = 'Icomoon';
  static const String _expressoFamily = 'Expresso';
  static const String _expressUFamily = 'ExpressU';
  static const String _expresshFamily = 'Expressh';

  // MyFlutterApp
  static const IconData kiconsToolsComponentAdditionalIcons =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);

  // MyIcons
  static const IconData kmoreCircle =
      IconData(0xe801, fontFamily: _myIconsFamily);
  static const IconData kiconsPlumbingComponentAdditionalIcons =
      IconData(0xe802, fontFamily: _myIconsFamily);
  static const IconData kiconsTruckComponentAdditionalIcons =
      IconData(0xe803, fontFamily: _myIconsFamily);

  // icomoon
  static const IconData kiconsTools =
      IconData(0xe900, fontFamily: _icomoonFamily);
  static const IconData kcomponentAdditionalIcons =
      IconData(0xe900, fontFamily: _icomoonFamily);

  // Expresso
  static const IconData kbulkStar =
      IconData(0xe805, fontFamily: _expressoFamily);

  // ExpressU
  static const IconData ktypeLogoDefaultComponentLogo =
      IconData(0xe804, fontFamily: _expressUFamily);

  // Expressh
  static const IconData kchat = IconData(0xe800, fontFamily: _expresshFamily);
}
