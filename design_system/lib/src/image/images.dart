import 'package:flutter/material.dart';

class Images {
  static Image nuvens = Image.asset(
    'assets/images/nuvens.jpeg',
    fit: BoxFit.cover,
  );

  static Image chuva = Image.asset(
    'assets/images/chuva.png',
    fit: BoxFit.cover,
  );

  static Image chuvaBranca = Image.asset(
    'assets/images/chuva_branca.png',
    fit: BoxFit.cover,
    height: 60,

    
  );
  static const ImageProvider lago = AssetImage(
    'assets/images/lago.jpeg',

    ); 
}
