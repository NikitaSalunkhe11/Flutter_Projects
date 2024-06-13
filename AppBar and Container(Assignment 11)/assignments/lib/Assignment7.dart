import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget{
  const Assignment7({super.key});

  @override
  State<Assignment7> createState()=>_Assignment7();
}
class _Assignment7 extends State<Assignment7>{
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("5 Network Images"),
      ),
      body:SizedBox(
        height: double.infinity,
        child:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            child:Image.network("https://tse4.mm.bing.net/th?id=OIP.ar4Iqk4Cjg9kMVh2VbdYCAHaFj&pid=Api&P=0&h=180"),
          ),
          const Padding(padding: EdgeInsets.all(3.0)),
          Container(
            height: 400,
            width: 400,
            child:Image.network("https://tse1.mm.bing.net/th?id=OIP.PVOhIhZ2cfFJVWI3U9WG6AHaE7&pid=Api&P=0&h=180"),
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
          Container(
            height: 400,
            width: 400,
            child:Image.network("https://tse4.mm.bing.net/th?id=OIP.m4FmOjk0Bx-N4JaBzsBoTgHaEP&pid=Api&P=0&h=180"),
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
          Container(
            height: 400,
            width: 400,
            child:Image.network("https://tse2.mm.bing.net/th?id=OIP.1F2U167fTKkr71yqnEVJpwHaEK&pid=Api&P=0&h=180"),
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
          Container(
            height: 400,
            width: 400,
            child:Image.network("https://tse4.mm.bing.net/th?id=OIP.adoZqiovJO3AfnLKMxT3DwHaEK&pid=Api&P=0&h=180"),
          ),
        ],
      ),
      ),
      ),
      );
  }
}