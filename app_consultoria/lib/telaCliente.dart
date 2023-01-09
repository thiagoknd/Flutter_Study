import 'package:flutter/material.dart';

class telaCliente extends StatefulWidget {
  const telaCliente({Key? key}) : super(key: key);

  @override
  State<telaCliente> createState() => _telaClienteState();
}

class _telaClienteState extends State<telaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Clientes"),
        backgroundColor: const Color(0xffc1cf4e),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_cliente.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Nossos Clientes",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffc1cf4e),
                    ),),
                )
              ],
            ),
            Padding(
              padding:const EdgeInsets.only(top: 50),
              child: Image.asset("images/cliente1.png"),
            ),
            const Text("Empresa de Software"),
            Padding(
              padding:const EdgeInsets.only(top: 10),
              child: Image.asset("images/cliente2.png"),
            ),
            const Text("Empresa de auditoria")
          ],
        ),
      ),
    );
  }
}
