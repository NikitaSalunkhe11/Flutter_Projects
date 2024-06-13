import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState()=> _ImagePage();
}
class _ImagePage extends State<MyApp>{

  List imagelist=["https://tse4.mm.bing.net/th?id=OIP.O150vRH3FBkQb16PAgyK3AHaEj&pid=Api&P=0&h=180",
  "https://tse3.mm.bing.net/th?id=OIP.4oFRqYnyj13kBSOlDDurWQHaE6&pid=Api&P=0&h=180",
  "https://tse3.mm.bing.net/th?id=OIP.4mlmnd80qXarqTE5N1rX8AHaEy&pid=Api&P=0&h=180",
  "https://tse3.mm.bing.net/th?id=OIP.wH1j9Bo2haGQ3fwj9F9DWwHaFj&pid=Api&P=0&h=180"];
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 212, 237, 183),
          centerTitle: true,
          title:const Text("Dynamic ListView",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 9, 111, 12),
          ),),
        ),
        body:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imagelist.length,
          itemBuilder:(context, index){
            return Container(
              height: 500,
              width: 500,
              child: Image.network(imagelist[index]),
            );
          },
        )
      ),
    );
  }
}