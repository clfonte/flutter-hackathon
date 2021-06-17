import 'package:flutter/material.dart';
import 'package:hackathon/ui/functions.dart';
import 'package:hackathon/widgets/barra_titulo.dart';
import 'package:hackathon/widgets/imagem.dart';

class Detalhes extends StatelessWidget {

  final Map dadosVeiculo;

  Detalhes(this.dadosVeiculo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTitulo.barraTitulo(
          dadosVeiculo["modelo"], iconeBarra: Icons.wysiwyg_rounded),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Imagem.mostrarImg(
              Functions.corrigeLinkImg(dadosVeiculo["fotodestaque"]).toString()
          ), // mostrar img
          Text("               "
              "Automóvel: " + dadosVeiculo["anoFabricacao"].toString() +
              dadosVeiculo["valor"].toString() +
              dadosVeiculo["tipo"].toString() +
              dadosVeiculo["opcional"].toString(),
              style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}