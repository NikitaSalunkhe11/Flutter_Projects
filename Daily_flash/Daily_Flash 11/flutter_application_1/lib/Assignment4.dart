import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=> _Assignment4();
}
class _Assignment4 extends State{

  final TextEditingController _nameController = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 11"),
        backgroundColor: const Color.fromARGB(255, 238, 143, 175),
      ),
      body:  Center(
        child:Padding(
              padding: const EdgeInsets.all(20.0),
                child: TextField(
                  maxLength: 20,
                  onChanged: (text) {
                    setState(() {});
                  },
                  controller: _nameController,
                  decoration:const InputDecoration(
                    labelText: 'Enter your Name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.red,width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.green,width: 2.0),
                    )
                  ),
                ),
              ),
            ),
    );
  }
}