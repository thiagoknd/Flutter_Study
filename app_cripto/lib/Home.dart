import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String valores = "R\$";
  String grupoRadio = "";


  void cotacao(String moeda) async{
    String url = "https://www.mercadobitcoin.net/api/${moeda}/ticker/";
    http.Response response = await http.get(Uri.parse(url));
    Map<String,dynamic> retorno = json.decode(response.body);
    setState(() {
      valores = "R\$ ${retorno["ticker"]["buy"]}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:  Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.black,
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Valor Da Moeda",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text(valores,
                      style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20,bottom: 30),
                child: Text("Escolha a moeda",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
              ),
              RadioListTile(
                secondary: Image.asset("images/bitcoin.png",width: 30,),
                  activeColor: Colors.black,
                  title: const Text("Bitcoin"),
                  value: "BTC",
                  groupValue: grupoRadio,
                  onChanged: (String? moeda){
                    setState(() {
                      grupoRadio = moeda!;
                    });
                  }
              ),
              RadioListTile(
                  secondary: Image.asset("images/cardano.png",width: 30,),
                  activeColor: Colors.black,
                  title: const Text("Cardano"),
                  value: "ADA",
                  groupValue: grupoRadio,
                  onChanged: (String? moeda){
                    setState(() {
                      grupoRadio = moeda!;
                    });
                  }
              ),
              RadioListTile(
                  secondary: Image.asset("images/ethereum.png",width: 30,),
                  activeColor: Colors.black,
                  title: const Text("Ethereum"),
                  value: "ETH",
                  groupValue: grupoRadio,
                  onChanged: (String? moeda){
                    setState(() {
                      grupoRadio = moeda!;
                    });
                  }
              ),
              RadioListTile(
                  secondary: Image.asset("images/poligon.png",width: 30,),
                  activeColor: Colors.black,
                  title: const Text("Polygon"),
                  value: "MATIC",
                  groupValue: grupoRadio,
                  onChanged: (String? moeda){
                    setState(() {
                      grupoRadio = moeda!;
                    });
                  }
              ),
              RadioListTile(
                  secondary: Image.asset("images/usdCoin.png",width: 30,),
                  activeColor: Colors.black,
                  title: const Text("USD Coin"),
                  value: "USDC",
                  groupValue: grupoRadio,
                  onChanged: (String? moeda){
                    setState(() {
                      grupoRadio = moeda!;
                    });
                  }
              ),
              RadioListTile(
                  secondary: Image.asset("images/XRP.png",width: 30,),
                  activeColor: Colors.black,
                  title: const Text("XRP"),
                  value: "XRP",
                  groupValue: grupoRadio,
                  onChanged: (String? moeda){
                    setState(() {
                      grupoRadio = moeda!;
                    });
                  }
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    child: Text("PESQUISAR"),
                  ),
                  onPressed: () => cotacao(grupoRadio),
                ) 
              ),
            ],
          ),
        ),
      )
    );
  }
}
