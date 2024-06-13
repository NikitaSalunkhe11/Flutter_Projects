import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State<Assignment2> createState()=> _Assignment2();
}

class _Assignment2 extends State<Assignment2>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash 7"),
      ),
      body:Center(
        child: Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(),
           ),
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                color: Colors.orange,
                Icons.star,
                size: 40.0,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Rating: 4.5",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
            ),
        ),)
    );
  }
}