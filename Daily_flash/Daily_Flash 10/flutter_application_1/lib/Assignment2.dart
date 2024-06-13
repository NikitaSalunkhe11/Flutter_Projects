import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State createState()=> _Assignment2();
}
class _Assignment2 extends State{

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
            gradient: LinearGradient(
              colors: [Colors.red,Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5,1.0],
            )
          ),
        ),
      ),
    );
  }
}