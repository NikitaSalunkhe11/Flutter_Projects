import 'package:flutter/material.dart';

class assignment5 extends StatefulWidget{
  const assignment5({super.key});

  @override
  State createState()=>_assignment5();
}
class _assignment5 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("assignment 5"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
        
          decoration: const BoxDecoration(
            color: Colors.blue,
          borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
          //gradient: LinearGradient(colors: [Color.fromARGB(255, 16, 108, 183)]),
          boxShadow: [
            BoxShadow(color: Colors.red,offset: Offset(10, 10),blurRadius: 10),
          ] 
          ),

        ),
      ),
    );
  }
}