import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controllerCep = TextEditingController();
    String resposta = "";
   //importação da biblioteca http, criação do metodo q buscará o cep desejado da api.
   void recuperarCep()async{
     String url = "https://viacep.com.br/ws/${controllerCep.text}/json/"; // passando url
     http.Response response =await http.get(Uri.parse(url)); // recuperando os dados da api
     Map<String,dynamic> retorno = json.decode(response.body);//convertendo para um objeto json e adicionando dentro de um map
     setState(() {
       resposta = "Bairro: ${retorno["bairro"]}\nLogradoro: ${retorno["logradouro"]}\nLocalidade: ${retorno["localidade"]} - ${retorno["uf"]}";
     });

     print("resposta" + response.body);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("PesqCep"),
      ),

      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(25, 60, 25, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Digite o cep que deseja pesquisar:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            Padding(
              padding:const EdgeInsets.only(top: 30,bottom: 40),
              child:TextField(
                keyboardType: TextInputType.number,
                decoration:const InputDecoration(
                    labelText: "CEP"
                ),
                style:const  TextStyle(
                  fontSize: 12,
                ),
                controller: controllerCep,
                maxLength: 8,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent
              ),
              onPressed: recuperarCep,
              child: const Text("Pesquisa"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(resposta,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
            )
          ],
        ),
      ),
    );
  }
}
