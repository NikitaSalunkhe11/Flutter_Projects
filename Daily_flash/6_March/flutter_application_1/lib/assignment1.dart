import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State createState()=> _Assignment1();
}

class _Assignment1 extends State{

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
            SizedBox(
              height: 250,
              width: 250,
              child: Image.network(
                fit: BoxFit.cover,
                "http://3.bp.blogspot.com/-BlGsTmQyxvc/Vmgf6d0KTII/AAAAAAAA7rI/1CHS-60gcdU/s1600/Alia%2BBhat%2BLatest%2BWallpaper13.jpg",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("UserName : Aliya Bhatt",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Mob No. 9732368163",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ],
        ),
      )
    );
  }
}