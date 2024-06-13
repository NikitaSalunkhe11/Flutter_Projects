import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State<Assignment3> createState()=> _Assignment3();
}

class _Assignment3 extends State<Assignment3>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash 7"),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 140,
             
              decoration: BoxDecoration(
                 color: Colors.amber,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(color: const Color.fromARGB(255, 20, 20, 20)),
                boxShadow: const [
                  BoxShadow(color: Colors.red,offset: Offset(10,10),blurRadius: 20),
                ]
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                 color: Color.fromARGB(255, 255, 7, 119),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(color: const Color.fromARGB(255, 20, 20, 20)),
                boxShadow: const [
                  BoxShadow(color: Color.fromARGB(255, 120, 105, 252),offset: Offset(10,10),blurRadius: 20),
                ]
              ),
            ),
          ],
        ),
      )
    );
  }
}