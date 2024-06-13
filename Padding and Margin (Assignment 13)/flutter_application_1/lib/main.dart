import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Assignment(),
    );
  }
}
class Assignment extends StatelessWidget{

  const Assignment({super.key});

    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding and Margin"),
        backgroundColor: const Color.fromARGB(255, 203, 152, 169),
      ),
      //backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Image.network("https://tse3.mm.bing.net/th?id=OIP.0m24m_QClTcrIsbrI6OFyQHaE8&pid=Api&P=0&h=180"),
          ),
        ) 
      ),
    );
  }
}