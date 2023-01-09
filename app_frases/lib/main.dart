import 'package:app_frases/Frases.dart';
import'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    title: "Frases do dia",
    home: Frases(),
    debugShowCheckedModeBanner: false,
  ));
}