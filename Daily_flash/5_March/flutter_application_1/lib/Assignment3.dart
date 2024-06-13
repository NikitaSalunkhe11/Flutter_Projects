
import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=>_Assignment3();
}

class _Assignment3 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 139, 231),
      ),
      
      floatingActionButton: Center(
        child: Container(
          height: 50,
          width: 200,
          child: FloatingActionButton(
            onPressed: (){},
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Nikita Salunkhe",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.person_2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}