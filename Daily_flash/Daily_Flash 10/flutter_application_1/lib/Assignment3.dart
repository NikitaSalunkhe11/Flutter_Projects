import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=> _Assignment3();
}
class _Assignment3 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 10"),
        backgroundColor: const Color.fromARGB(255, 226, 174, 236),
      ),
      body: Center(
        child: Container( 
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            gradient: LinearGradient(colors: [Color.fromARGB(255, 24, 143, 64),Color.fromARGB(255, 236, 170, 30)],
            begin: Alignment.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.5,0.5]
            )
          ),
        ),
      ),
    );
  }
}