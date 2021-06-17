import 'package:flutter/material.dart';
import 'package:hackathon/ui/functions.dart';
import 'package:hackathon/widgets/lista_dados_veiculos.dart';

class Listagem {
// context é a tela que controla e o snapshot onde fica os dados que ira retornar
  static Widget criarListagem(BuildContext context, AsyncSnapshot snapshot, int tipo) {
    return ListView.builder(
      padding: EdgeInsets.all(7),
      // criar barra de navegaçao na vertical
      scrollDirection: Axis.vertical,
      // fazer a conta de quantos dados tem a lista
      itemCount: snapshot.data.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (tipo == Functions.LISTA_MODELO)
              ListaDadosVeiculos.selecionaItem(context, snapshot.data[index]);
          },
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _retornaLista(tipo, snapshot.data[index]),
            ),
          ),
        );
      },
    );
  }

  static Widget _retornaLista(int tipo, Map dados) {
    switch (tipo) {
      case Functions.LISTA_MODELO:
        return ListaDadosVeiculos.mostrarFotoVeiculo(dados);
      case Functions.LISTA_FOTODESTAQUE:
        return Container();
      default:
        return Container();
    }
  }
}