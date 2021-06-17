import 'package:flutter/material.dart';
import 'package:hackathon/ui/functions.dart';
import 'package:hackathon/widgets/barra_carregamento.dart';
import 'package:hackathon/widgets/barra_titulo.dart';
import 'package:hackathon/widgets/listagem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTitulo.barraTitulo("JPEC VEÍCULOS", iconeBarra: Icons.directions_car_sharp),
      body: Column(
        children: <Widget>[
          Expanded(
              child: FutureBuilder(
                  future: Functions.getListaJson(
                    "https://60c80edcafc88600179f60be.mockapi.io/api/v1/veiculo"),
                // atenção para as variáveis
                builder: (context, snapshot) {
                    switch(snapshot.connectionState) {
                      case ConnectionState.waiting:
                      case ConnectionState.none:
                        return BarraCarregando
                            .criarCarregamento(); // fazer mostrar nossa barrinha top das top de carregamento
                      default: 
                        if (snapshot.hasError)
                          return Text("NÃO FOI POSSÍVEL VISUALIZAR OS MODELITOS DAS X-WINGS" + snapshot.error.toString());
                        else
                          return Listagem.criarListagem(context, snapshot, Functions.LISTA_MODELO);
                    }
                },
              )
          )
        ],
      ),
    );
  }
}
