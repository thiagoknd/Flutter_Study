import 'package:flutter/material.dart';

class telaSecundaria extends StatefulWidget {
   String valor;
  telaSecundaria(String this.valor,{Key? key}) : super(key: key);

  @override
  State<telaSecundaria> createState() => _telaSecundariaState();
}

class _telaSecundariaState extends State<telaSecundaria> {
  @override
  Widget build(BuildContext context) {
    late String caminhoImage;
    if(widget.valor == "cara"){
      caminhoImage = "images/moeda_cara.png";
    }else{
      caminhoImage = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: const Color(0xff61bd8c),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Image.asset(caminhoImage),
            ),
            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )

          ],
        ),
      ),
    );
  }
}
