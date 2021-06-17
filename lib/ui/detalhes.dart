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
              Functions.corrigeLinkImg(dadosVeiculo["fotoDestaque"]).toString()
          ), // mostrar img
            Text("\n"
              "     ----- Informações -----\n" +
              "\n" +
              "     Ano do Modelo: "     + dadosVeiculo["anoModelo"].toString() + "\n" +
              "     Ano de Fabricação: " + dadosVeiculo["anoFabricacao"].toString() + "\n" +
              "     Tipo "               + dadosVeiculo["tipo"].toString() + "\n" +
              "     Cor: "               + dadosVeiculo["cor"].toString() + "\n" +
              "     Marca: "             + dadosVeiculo["marca"].toString() + "\n" +
              "     Preço R\$ "          + dadosVeiculo["valor"].toString() + "\n" +
              "     Observações: "       + dadosVeiculo["opcional"].toString(),
              style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
        ],
      ),
    );

  }
}