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
        title: Text("Daily Flash 11"),
        backgroundColor: const Color.fromARGB(255, 238, 143, 175),
      ),
      body: const Center(
        child:Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration:InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              )
            ),
          ),
        ),
      ),
    );
  }
}