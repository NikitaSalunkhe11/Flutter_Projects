
import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget{
  const Assignment6({super.key});

  @override
  State<Assignment6> createState()=>_Assignment6();
}
class _Assignment6 extends State<Assignment6>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("10 Container",
        style: TextStyle(
          color:Colors.white, 
        ),),
      ),
      body:SizedBox(
        width: double.infinity,
      child:SingleChildScrollView( 
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 241, 210, 119),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 203, 232, 37),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color:const  Color.fromARGB(255, 167, 237, 16),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 81, 246, 10),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color:const  Color.fromARGB(255, 7, 255, 201),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color:const  Color.fromARGB(255, 7, 255, 226),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 7, 123, 255),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 36, 7, 255),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 135, 7, 255),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 255, 7, 238),
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height:150,
              width: 150,
              color: const Color.fromARGB(255, 255, 7, 102),
            ),
          ],
        ),
      ),
      ),
    );
  }
}