import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Imagem {
  static Widget mostrarImg(String link, {double imgW, double imgH}) {
    return FadeInImage.memoryNetwork(
      placeholder: kTransparentImage,
      image: link,
      height: imgH,
      width: imgW,
    );
  }
}