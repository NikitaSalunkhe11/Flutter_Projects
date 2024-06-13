import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State createState()=> _Assignment2();
}

class _Assignment2 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 162, 188),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                fit:BoxFit.cover,
                "http://3.bp.blogspot.com/-BlGsTmQyxvc/Vmgf6d0KTII/AAAAAAAA7rI/1CHS-60gcdU/s1600/Alia%2BBhat%2BLatest%2BWallpaper13.jpg",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                fit:BoxFit.cover,
                "https://tse1.mm.bing.net/th?id=OIP.0pI738LC1B6cpLqZ9KJZogHaEo&pid=Api&P=0&h=180",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                fit:BoxFit.cover,
                "https://tse2.mm.bing.net/th?id=OIP.skTFx6wr33vQ--eXVxeMZAHaEK&pid=Api&P=0&h=180",
              ),
            ),
          ],
        ),
      )
    );
  }
}