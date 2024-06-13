
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State createState()=>_Assignment5();
}

class _Assignment5 extends State{

  Color _forcolor = Colors.blue;

  void colorChange(){
      
    if(_forcolor == Colors.blue){
      _forcolor=Colors.purple;
    }else{
      _forcolor = Colors.blue;
    }
  
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 139, 231),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          height: 50,
          width: 100,
          child: GestureDetector(
            onLongPress:(){
              setState(() {
                colorChange();
              });
              
            },
            child: FloatingActionButton(
              onPressed: (){},
              
              hoverColor: Colors.orange,
              //autofocus: true,
              hoverElevation: 20.0,
              backgroundColor: _forcolor,
              child: const Text("Hello Guy's",
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
        ),
        ],
      ),
    );
  }
}