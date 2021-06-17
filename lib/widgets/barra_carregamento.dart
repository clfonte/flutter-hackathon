import 'package:flutter/material.dart';

class BarraCarregando {
  static Widget criarCarregamento({Color corCarregamento = Colors.purple}) {
    return Center(
      child:  CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(corCarregamento),
        // tamanho da borda de carregamento
        strokeWidth: 5,
      ),
    );
  }
}