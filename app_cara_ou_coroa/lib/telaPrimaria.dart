import 'package:app_cara_ou_coroa/telaSecundaria.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class telaPrimaria extends StatefulWidget {
  const telaPrimaria({Key? key}) : super(key: key);

  @override
  State<telaPrimaria> createState() => _telaPrimariaState();
}

class _telaPrimariaState extends State<telaPrimaria> {
  String resultado (){
    var itens = ["cara","coroa"];
    var valorAleatorio = Random().nextInt(itens.length);
    return itens[valorAleatorio];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd8c),
      body:Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:const EdgeInsets.only(bottom: 30),
              child: Image.asset("images/logo.png"),
            ),
            GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => telaSecundaria(resultado()))
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
