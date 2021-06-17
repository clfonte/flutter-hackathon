import 'package:flutter/material.dart';
import 'package:hackathon/ui/functions.dart';
import 'package:hackathon/widgets/botoes.dart';

class BarraTitulo {
  static Widget barraTitulo(String titulo, {IconData icone, IconData iconeBarra, tituloCentralizado = true}) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Row(
        children: [
          Functions.mostrarIcone(icone),
          Text(titulo),
        ],
      ),
      centerTitle: tituloCentralizado,
      actions: [
        _criarBotao(iconeBarra),
      ],
    );
  }

  static Widget _criarBotao(IconData iconeBarra) {
    return iconeBarra != null ? Botoes.botaoCompartilhar(iconeBarra) : Container();
  }
}