import 'package:flutter/material.dart';

class telaContato extends StatefulWidget {
  const telaContato({Key? key}) : super(key: key);

  @override
  State<telaContato> createState() => _telaContatoState();
}

class _telaContatoState extends State<telaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contatos"),
        backgroundColor: const Color(0xff69c498),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_contato.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Contatos Disponiveis",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff69c498),
                    ),),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text("Email: AtmConsultorias@hotmail.com \n\nTelefone: (11) 93222-3333 \n\nCelular: (11) 92323-2323"),
            )
          ],
        ),
      ),
    );
  }
}
