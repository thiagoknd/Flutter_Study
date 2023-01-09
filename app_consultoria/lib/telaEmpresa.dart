import 'package:flutter/material.dart';

class telaEmpresa extends StatefulWidget {
  const telaEmpresa({Key? key}) : super(key: key);

  @override
  State<telaEmpresa> createState() => _telaEmpresaState();
}

class _telaEmpresaState extends State<telaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Empresa"),
        backgroundColor: const Color(0xffee7a54),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text("Sobre a Empresa",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffee7a54),
                      ),),
                  )
                ],
              ),
              const Text(
                  "\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu leo dui. Vestibulum ante"
                      " ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at orci"
                      " purus. In tincidunt lorem in velit ultricies congue. Sed facilisis dui vitae nisl faucibus"
                      " ornare. Praesent in justo diam. Nunc dictum venenatis tellus eget fermentum. Mauris quis dui"
                      " condimentum, rhoncus mi et, ullamcorper mauris. Curabitur commodo vitae eros sed vulputate. Morbi pharetra interdum odio,"
                      " at facilisis velit pulvinar nec. Fusce sit amet orci a augue egestas semper sed quis purus. Curabitur turpis urna, commodo"
                      " non erat quis, eleifend mollis orci. Vestibulum feugiat sem nisi, nec suscipit turpis aliquam tempor. Quisque dapibus lacinia"
                      " neque eu gravida. Proin sollicitudin eu nisi accumsan semper. Vivamus suscipit eros nibh, vel posuere mauris laoreet a. In ut"
                      " interdum ex. Maecenas convallis luctus tortor. Integer porttitor placerat metus, et fringilla urna placerat at. Donec eu ex ut"
                      " lectus blandit convallis. Duis in placerat lorem. Phasellus interdum, nisl ut finibus varius, nisl lacus posuere lorem, sed rhoncus"
                      " velit neque ut turpis. Nullam sit amet quam eget lorem volutpat maximus ut at dolor. Sed elementum aliquet leo, nec dictum justo"
                      " tincidunt sed.Integer malesuada ex ut nibh ullamcorper, semper bibendum nibh ultrices. Vestibulum elementum libero ac libero fringilla"
                      " efficitur. Nulla ultrices vel nibh sed porttitor. Phasellus consectetur sagittis enim, et pellentesque urna pharetra at. Orci varius "
                      "natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus sed risus erat. In tristique bibendum euismod. Nunc"
                      " enim velit, lobortis condimentum turpis nec, feugiat viverra purus. Maecenas a velit maximus, laoreet lacus eget, congue magna."
                      " Pellentesque augue ipsum, pharetra ac nunc eget, elementum facilisis nibh. Donec vehicula dolor non libero tempor laoreet. Aliquam"
                      " erat volutpat. Nulla faucibus libero at tristique egestas. Vivamus faucibus turpis at nisi placerat, et cursus est porta. Fusce "
                      "sed dui elit. Curabitur rutrum molestie tortor nec facilisis.Etiam ut erat vitae velit ullamcorper vehicula. Morbi at mi mollis,"
                      " sagittis diam ut, pellentesque lectus. Proin condimentum sed quam eu iaculis. Vivamus non massa ac massa tincidunt eleifend."
                      " Sed eleifend pellentesque libero, et pretium elit scelerisque et. Nulla porta fringilla sapien, eu ultrices mauris ultricies vitae."
                      " Nam pellentesque nunc ac mi ultrices, sed posuere augue varius. Vivamus dictum erat quis arcu semper, sit amet facilisis leo luctus."
                      " Maecenas massa mauris, tristique pharetra molestie ac, luctus sed sem.",textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      )
    );
  }
}
