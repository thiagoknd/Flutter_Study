import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  late String resultado = "";
  TextEditingController controllerAlcool = TextEditingController();
  TextEditingController controllerGasolina = TextEditingController();

  void calculando (){
    double valorAlcool = double.parse(controllerAlcool.text.replaceAll(",", "."));
    double valorGasolina = double.parse(controllerGasolina.text.replaceAll(",", "."));

    double calculo = valorAlcool/valorGasolina;

    if(calculo >= 0.7){
      setState(() {
        resultado = "Melhor abastecer com Gasolina";
      });
    }else if(calculo>=0 && calculo<=0.69){
      setState(() {
        resultado = "melhor abastecer com Álcool";
      });
    }else{
      setState(() {
        resultado = "algo deu errado";
      });
    }
    limparCampos();
  }
  void limparCampos(){
    controllerGasolina.text = "";
    controllerAlcool.text = "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
        backgroundColor: const Color(0xff2a3895),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png"),
              const Padding(
                padding: EdgeInsets.only(top: 10,bottom: 25),
                child: Text("Saiba qual a melhor opção para abastecimento do seu carro.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço do alcool",
                ),
                controller: controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço da gasolina",
                ),
                controller: controllerGasolina,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35,bottom: 35),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff2a3895)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Text("Calcular",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  onPressed: calculando,
                ),
              ),
              Text(resultado,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),)
            ],
          ),
        ),
      )
    );
  }
}
