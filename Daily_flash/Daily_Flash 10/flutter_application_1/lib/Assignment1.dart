import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State createState()=> _Assignment1();
}
class _Assignment1 extends State{

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
            gradient: LinearGradient(colors: [Colors.red,Colors.blue],)
          ),
        ),
      ),
    );
  }
}