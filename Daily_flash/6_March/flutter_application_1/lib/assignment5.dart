import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State createState()=> _Assignment5();
}

class _Assignment5 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 162, 188),
      ),
      body:  Column(
        children: [
           const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width:200,
                  height: 200,
                  image: NetworkImage("https://www.southindiafashion.com/wp-content/uploads/2022/07/sai-pallavi-in-a-blue-saree-for-gargi1.jpg"),
                ),
              ], 
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 54, 60, 244),
                )
              ],
            )
        ],

      ),
    );
  }
}