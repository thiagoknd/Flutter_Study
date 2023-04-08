import 'package:eval_ex/expression.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
   String n = "";

   void operacao (String calc){
     setState(() {
       n += calc;
     });
   }
   void apagar(){
     setState(() {
       n = "";
     });
   }
   void calculo(){
     Expression exp = Expression(n);
     setState(() {
       n = exp.eval().toString();
     });

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212832),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 120,
            alignment: Alignment.bottomRight,
            child: Text(
              n,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange
                    ),
                    onPressed: apagar,
                    child: const Text("C",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: () => operacao("("),
                    child: const Text("(",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: () => operacao(")"),
                    child: const Text(")",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: () => operacao("/"),
                    child: const Text("/",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("7"),
                    child: const Text("7",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("8"),
                    child: const Text("8",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("9"),
                    child: const Text("9",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: () => operacao("*"),
                    child: const Text("*",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("4"),
                    child: const Text("4",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("5"),
                    child: const Text("5",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("6"),
                    child: const Text("6",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: () => operacao("-"),
                    child: const Text("-",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("1"),
                    child: const Text("1",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("2"),
                    child: const Text("2",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("3"),
                    child: const Text("3",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: () => operacao("+"),
                    child: const Text("+",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("0"),
                    child: const Text("0",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("."),
                    child: const Text(".",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff393d46)
                    ),
                    onPressed: () => operacao("00"),
                    child: const Text("00",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff00adb4)
                    ),
                    onPressed: calculo,
                    child: const Text("=",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
