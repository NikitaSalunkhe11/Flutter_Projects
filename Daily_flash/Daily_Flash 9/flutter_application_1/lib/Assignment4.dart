import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=>_Assignment4State();
}

class _Assignment4State extends State{

  final TextEditingController _nameController = TextEditingController(); 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 9"),
        backgroundColor: const Color.fromARGB(255, 225, 134, 165),
      ), 
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 229, 155, 242),
                  filled: true,
                  hintText: 'Enter Your Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blue,width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.red,width: 2.0),
                  )
                ),
              ),
            ),
            const  SizedBox(
              height: 30,
            ),
            TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 246, 188, 207)),
              shape: MaterialStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))))),
              onPressed: (){},
              child:const Text("Submit",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ))
            )
          ],
        ),
      )
    );
  }
}