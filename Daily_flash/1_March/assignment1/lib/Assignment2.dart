import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class assignment2 extends StatefulWidget{
  const assignment2({super.key});

  @override
  State createState()=> _assignment2();
}
class _assignment2 extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        leading: const Icon(Icons.start),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 243, 104, 150),
        actions: [
          IconButton(onPressed: (){},
           icon: const Icon(Icons.edit_note),
          ),
          IconButton(onPressed: (){},
           icon: const Icon(Icons.list),
          ),
          IconButton(onPressed: (){},
           icon: const Icon(Icons.ac_unit_sharp))
        ],
      ),
    );
  }
}