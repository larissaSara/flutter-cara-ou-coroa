import 'dart:math';

import 'package:cara_ou_coroa/Inicio.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  var itensMoedas = [
    Image.asset("images/moeda_cara.png"),
    Image.asset("images/moeda_coroa.png"),
  ];

  var moedaSorteada;

  Jogo(){
    var numero = Random().nextInt(itensMoedas.length);
    moedaSorteada = itensMoedas[numero];
    print(numero);
  }


  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {



  void _voltar(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Inicio()),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            widget.moedaSorteada,
            GestureDetector(
              onTap: _voltar,
              child: Image.asset("images/botao_voltar.png"),
            )

          ],
        ),
      ),
    );
  }
}
