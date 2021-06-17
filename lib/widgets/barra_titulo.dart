import 'package:flutter/material.dart';
import 'package:hackathon/ui/functions.dart';

class BarraTitulo {
  static Widget barraTitulo(String titulo, {IconData icone, IconData iconeBarra, Function clique, tituloCentralizado = true}) {
    return AppBar(
      backgroundColor: Colors.cyanAccent,
      title: Row(
        children: [
          Functions.mostrarIcone(icone),
          Text(titulo),
        ],
      ),
      centerTitle: tituloCentralizado,
    );
  }
}