
import 'package:flutter/material.dart';

// ignore: camel_case_types
class assignment1 extends StatefulWidget{
  const assignment1({super.key});

  @override
  State createState()=> _assignment();
}
// ignore: camel_case_types
class _assignment extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 158, 242),
        title: const Text("Assignment 1"),
        centerTitle: true,
      ),
      body:Center(
        child: Container(
          padding: const EdgeInsets.all(3.0),
          height: 300,
          width: 300,
          decoration: const BoxDecoration(gradient: LinearGradient(colors:[Color.fromARGB(255, 30, 203, 233),Colors.purple] )),
          child: Image.network("https://tse3.mm.bing.net/th?id=OIP.sM4Oq-Q6fFz5om-ofhoVygHaHa&pid=Api&P=0&h=180"),
        ),
      ),
    );
  }
}