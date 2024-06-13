
import 'package:flutter/material.dart';

// ignore: camel_case_types
class assignment3 extends StatefulWidget{
  const assignment3({super.key});

  @override
  State createState()=> _assignment3();
}
// ignore: camel_case_types
class _assignment3 extends State{

  Color _forcolor=Colors.red;

  void changecolor(){
    setState(() {
      
    if(_forcolor == Colors.red){
      _forcolor=Colors.green;
    }else{
      _forcolor=Colors.red;
    }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 158, 242),
        title: const Text("Assignment 3"),
        centerTitle: true,
      ),
      body:Center(
        child: GestureDetector(
          onTap: changecolor,
          child: Container(
            height: 200,
            width: 200,
            
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: _forcolor,width: 7.0),
            ),
          ),
        ),)
    );
  }
}