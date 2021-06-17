import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/ui/functions.dart';

class Botoes {
  static Widget botao(String textoBotao, Function clique, {IconData iconeBotao, double tamanhoBotao = 150, Color corBotao = Colors.redAccent}) {
    return ElevatedButton(
      child: Container(
        width: tamanhoBotao,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Functions.mostrarIcone(iconeBotao), // FAZ MOSTRAR O ICONE - TEM QUE INCLUIR DEPOIS QUE CRIAR A CLASSE FUNC E NAO ESQUECER DE CHAMAR
            Text(textoBotao, style: TextStyle(color: Colors.white, fontSize: 25),)
          ],
        ),
      ),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(corBotao)),
      onPressed: clique,
    );
  }
}