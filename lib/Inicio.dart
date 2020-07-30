import 'package:cara_ou_coroa/Jogo.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  void _abrirJogo(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Jogo()),
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
           Image.asset("images/logo.png"),

           GestureDetector(
             onTap: _abrirJogo,
             child: Image.asset("images/botao_jogar.png"),
           )

         ],
       ),
     ),
    );
  }
}
