import 'package:flutter/material.dart';

class quiz_app extends StatefulWidget{
  const quiz_app({super.key});

  State createState()=> _quiz_app();
}
class _quiz_app extends State{

  bool firstScreen=true;

  Scaffold isScaffold(){
    if(firstScreen == true){
      return Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromARGB(255, 58, 20, 246),
          title: const Text("QuizApp",
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
            color: Colors.white
          ),
          ),
        ),
      );
    }else{
      return Scaffold();
    }
  }
  Widget build(BuildContext context){
    return isScaffold();
  }
}