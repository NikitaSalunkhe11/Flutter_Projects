import 'package:flutter/material.dart';

class assignment5 extends StatefulWidget{
  const assignment5({super.key});

  @override
  State createState()=> _assignment5();
}
class _assignment5 extends State{

  Color forcolor = Colors.red;
  Text fortext = const Text("Click Me !!");
  
  void onClick(){
    setState(() {
    if(forcolor == Colors.red){
       forcolor=Colors.blue;
       fortext= const Text("Contanier Tapped!!!");
    }else{
      forcolor=Colors.red;
      fortext=const Text("Click Me!!!");
    }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 110, 190),
      ),
      body: GestureDetector(
        onTap: onClick,
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: forcolor,
            child: Center(
              child: fortext,
            )
          ),
        ),
      )
    );
  }
}