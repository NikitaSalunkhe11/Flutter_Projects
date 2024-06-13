import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=> _Assignment4();
}
class _Assignment4 extends State{

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
            gradient: LinearGradient(colors: [Colors.blue,Colors.purple],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops:[0.0,0.5],            
            ),
            boxShadow: [
              BoxShadow(color: Colors.red,offset: Offset(10, 10))
            ]
          ),
        ),
      ),
    );
  }
}