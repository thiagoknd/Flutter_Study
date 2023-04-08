import 'package:calculadora/Calculadora.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Calculadora",
    home: Calculadora(),
  ));
}