
import 'dart:math';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  late String resultadoFinal="";
  var imagembot = AssetImage("images/padrao.png");

  void sorteio(int escolha){
    var maquina = ["images/papel.png","images/pedra.png","images/tesoura.png"];
    int escolhaMaquina = Random().nextInt(maquina.length);
    // papel ganha de pedra, pedra ganha de tesoura, tesoura ganha de papel
    if((escolhaMaquina == 0 && escolha == 1) || (escolhaMaquina == 1 && escolha == 3) || (escolhaMaquina == 2 && escolha == 2)){
        setState(() {
          resultadoFinal = "O bot ganhou";
        });
    }else if((escolhaMaquina == 0 && escolha == 2) || (escolhaMaquina == 1 && escolha == 1) || (escolhaMaquina == 2 && escolha == 3)){
        setState(() {
          resultadoFinal = "Empate";
        });
    }else{
      resultadoFinal = "Você ganhou.";
    }
    setState(() {
      imagembot = AssetImage(maquina[escolhaMaquina]);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokens"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Escolha do App:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,

              ),),
            Padding(
              padding: const EdgeInsets.only(top: 25,bottom: 25),
              child: Image(image: imagembot,width: 125,),
            ),
            const Text("Escolha uma opção abaixo:",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
            Padding(
              padding: const EdgeInsets.only(top: 25,bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/pedra.png",width: 100,),
                    onTap: () => sorteio(1),
                  ),
                  GestureDetector(
                    child: Image.asset("images/papel.png",width: 100),
                    onTap: () => sorteio(2),
                  ),
                  GestureDetector(
                    child: Image.asset("images/tesoura.png",width: 100),
                    onTap: () => sorteio(3),
                  ),
                ],
              ),
            ),
            Text(resultadoFinal,textAlign: TextAlign.justify,style:const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),),
          ],
        ),
      ),
    );
  }
}
