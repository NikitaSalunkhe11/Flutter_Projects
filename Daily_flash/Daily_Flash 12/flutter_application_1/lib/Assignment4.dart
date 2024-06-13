import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=> _Assignment4();
}
class _Assignment4 extends State{

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 12"),
        backgroundColor: Colors.amber,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _nameController,
              decoration:const InputDecoration(
                hintText: 'Enter your name',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.pink),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 47, 30, 233)),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _collegeController,
              decoration:const InputDecoration(
                hintText: 'Enter college name',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.pink),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 47, 30, 233)),
                )
              ),
            ),
          )
        ],
      )
    );
  }
}