import 'package:flutter/material.dart';

class telaServico extends StatefulWidget {
  const telaServico({Key? key}) : super(key: key);

  @override
  State<telaServico> createState() => _telaServicoState();
}

class _telaServicoState extends State<telaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Serviços"),
        backgroundColor: const Color(0xff1ed5cf),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_servico.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Nossos Serviços",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1ed5cf),
                  ),),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text("Consultoria \n\nCalculo de preços \n\nAcompanhamento de projetos"),
            )
          ],
        ),
      ),
    );
  }
}
