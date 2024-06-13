import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient to the Container"),  
      ),
      body: Container(
        height: 300,
        width: 300,
        
        decoration: const BoxDecoration(
         // color: Colors.pink,
         // border: Border.all(color:Colors.blue,width: 5),
          gradient:  LinearGradient(
            stops: [0.2,0.5],
            colors:[ Color.fromARGB(255, 52, 135, 230),Color.fromARGB(255, 33, 194, 243)],
        ),
      ),
      ) 
    );
  }
}