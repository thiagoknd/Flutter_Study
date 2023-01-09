import 'package:flutter/material.dart';
import 'dart:math';
class Frases extends StatefulWidget {
  const Frases({Key? key}) : super(key: key);

  @override
  State<Frases> createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {
  late String fraseInicial = "Clique no botão para gerar uma frase";
  var frases = [
    "Eu prefiro errar do que não fazer nada",
    "Somos feitos por nossas escolhas",
    "Agonia, êxtase e paz. Cada passagem tem a sua própria beleza",
    "Posso falhar, mas não vou desistir.",
    "Se estiverem esperando que eu desista, é bom esperarem sentados.",
    "E quando os gigantes te chamarem e perguntarem seu valor. Você saberá ganhando ou morrendo.",
    "Se a vida não te mudou, então tu falhastes.",
    "A verdadeira sabedoria é reconhecer o valor da própria ignorância",
    "Eu me esforço. Eu falho. Mas a rendição é um privilégio que eu não possuo",
    "Precisão é a diferença entre um açougueiro e um cirurgião."
  ];

  void gerarFrases(){
    var numeroAleatorio = Random().nextInt(frases.length);
    setState(() {
      fraseInicial = frases[numeroAleatorio];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases Champs LOL"),
        backgroundColor: Colors.blueAccent,
      ),

      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: [
            Image.asset("images/imagemPrincipal.jpg"),
            Padding(
              padding:const EdgeInsets.only(bottom: 120,top: 100),
              child: Text(fraseInicial,textAlign: TextAlign.justify,style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent
              ),
                onPressed: gerarFrases,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Text("Gerar Frase",
                    style: TextStyle(
                      fontSize: 16,

                  ),),
                ),

            )
          ],
        ),
      ),
    );
  }
}
