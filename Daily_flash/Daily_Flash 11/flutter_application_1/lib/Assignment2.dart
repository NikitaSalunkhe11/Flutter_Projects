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
        title: const Text("Daily Flash 11"),
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
              ),
              suffix:Icon(Icons.search,),
              suffixIcon: Icon(Icons.lock),
            ),
          ),
        ),
      ),
    );
  }
}