import 'package:flutter/material.dart';

class Texto {
  static Widget inserirTexto(String texto, TextEditingController controller, TextInputType teclado) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: texto,
          labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 25),
        ),
        style: TextStyle(color: Colors.deepPurple, fontSize: 25),
        keyboardType: teclado,
      ),
    );
  }
}