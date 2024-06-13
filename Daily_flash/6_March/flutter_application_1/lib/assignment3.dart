import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=> _Assignment3();
}

class _Assignment3 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 162, 188),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset("lib/assets/Images/Nikita_Salunkhe.jpg"), 
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              
            decoration:BoxDecoration(
              color: const Color.fromARGB(255, 204, 238, 252),
              boxShadow:const  [
                BoxShadow(blurRadius: 20,color: Color.fromARGB(255, 72, 194, 251),offset: Offset(10, 10)),
              ],
              border: Border.all(color: const Color.fromARGB(255, 37, 106, 244),width: 2,style: BorderStyle.solid),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  "Nikita Salunkhe",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                            ),
              ),
            ),
          ],
        ),
      )
    );
  }
}