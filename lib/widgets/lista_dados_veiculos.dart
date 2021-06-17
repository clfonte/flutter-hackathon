import 'package:flutter/material.dart';
import 'package:hackathon/ui/detalhes.dart';
import 'package:hackathon/ui/functions.dart';
import 'package:hackathon/widgets/imagem.dart';

class ListaDadosVeiculos {

  static void selecionaItem(BuildContext context, Map dados) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => Detalhes (dados)
    ));
  }

  static Widget mostrarFotoVeiculo(Map dados) {
    return Row(
      children: <Widget>[
        Imagem.mostrarImg(
            Functions.corrigeLinkImg(dados["fotoDestaque"].toString()), imgH: 75, imgW:75
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(dados["modelo"].toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            )
        )
      ],
    );
  }
}