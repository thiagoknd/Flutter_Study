import 'package:app_consultoria/telaCliente.dart';
import 'package:app_consultoria/telaContato.dart';
import 'package:app_consultoria/telaEmpresa.dart';
import 'package:app_consultoria/telaServico.dart';
import 'package:flutter/material.dart';

class telaMenu extends StatefulWidget {
  const telaMenu({Key? key}) : super(key: key);

  @override
  State<telaMenu> createState() => _telaMenuState();
}

class _telaMenuState extends State<telaMenu> {
  void navegacaoTelas (String tela){
    switch(tela){
      case "empresa":
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const telaEmpresa())
        );
        break;
      case "servico":
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const telaServico())
        );
        break;
      case "cliente":
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const telaCliente())
        );
        break;
      case"contato":
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const telaContato())
        );
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(60, 30, 60, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_empresa.png"),
                    onTap: () => navegacaoTelas("empresa"),
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_servico.png"),
                    onTap:() => navegacaoTelas("servico"),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Image.asset("images/menu_cliente.png"),
                  onTap: () => navegacaoTelas("cliente"),
                ),
                GestureDetector(
                  child: Image.asset("images/menu_contato.png"),
                  onTap: () => navegacaoTelas("contato"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
