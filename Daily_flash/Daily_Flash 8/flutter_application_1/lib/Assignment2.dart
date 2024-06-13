import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State createState()=> _Assignment2();
}

class _Assignment2 extends State{

  List foodImage = [
    "https://tse4.mm.bing.net/th?id=OIP.H07SGPpx-swRy0WfmnDIdwHaHa&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.MfhIfzrC6x6T1-szQkjtCgHaEo&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.6sglb3KGXH92W3UK5Njh5gAAAA&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.kpzl9Ji_Vgut-bD5HaoScwHaFo&pid=Api&P=0&h=180",
    'https://tse2.mm.bing.net/th?id=OIP.kF3FcUAwhjP47DW8P50s3wHaE7&pid=Api&P=0&h=180',
    "https://tse2.mm.bing.net/th?id=OIP.wBu0Xsb774mtzvjhq1C3DgHaE8&pid=Api&P=0&h=180",
  ];

  List foodname=[
    "Burger",
    "Pizza",
    "Pav Bhaji",
    "Vada Pav",
    "Misal",
    "Biryani",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash "),
      ),
      body:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodImage.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.network(
                  foodImage[index],
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Text(
                  foodname[index],
                  textAlign: TextAlign.center,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}