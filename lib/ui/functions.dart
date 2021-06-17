import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Functions {

  static const LISTA_MODELO        = 1;
  static const LISTA_ANOMODELO     = 2;
  static const LISTA_ANOFABRICACAO = 3;
  static const LISTA_VALOR         = 4;
  static const LISTA_TIPO          = 5;
  static const LISTA_FOTODESTAQUE  = 6;
  static const LISTA_COR           = 7;
  static const LISTA_MARCA         = 8;
  static const LISTA_OPCIONAL      = 9;

  static Widget _iconeEspacado(IconData iconeEspacado, Color corIcone, double tamanhoIcone) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Icon(iconeEspacado, color: corIcone, size: tamanhoIcone)
    );
  }

  // pra colocar icone caso nao tiver
  static Widget mostrarIcone(IconData showIcon, {Color corIcone, double tamanhoIcone}) {
    return showIcon != null ? _iconeEspacado(showIcon, corIcone, tamanhoIcone) : Container();
  }

  static String corrigeLinkImg(String link) {
    return link.replaceAll("~/", "https://60c80edcafc88600179f60be.mockapi.io/");
  }

  // assincrono
  static Future<List<dynamic>> getListaJson(String link) async {
    // passando a url atraves do http
    Uri uri = Uri.parse(link);
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }
}