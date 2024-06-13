import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});

  @override
  State createState()=> _Assignment();
}
class _Assignment extends State{

  List<String> matches=["One-day Match","T-20 match","Test Match"];
  
  List<List<String>> playersimage=[
    [
    "https://tse2.mm.bing.net/th?id=OIP.TgMgSiX8_uUhM5TEUhvO4QHaEG&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.sQUDeSJWqv3jt9AZPQDIvgHaFj&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.NyeOTauZgs6nwNM3tyaGOAHaJ3&pid=Api&P=0&h=180",
    ],

    [
    "https://tse3.mm.bing.net/th?id=OIP.WS00WWVCBmIIk4jXpgAzeAHaEK&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.8v8MY3YWwXWBWE68fUvZ-gHaEK&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.FQzn2GPP1bK4iErfqX0drwHaEo&pid=Api&P=0&h=180",
    ],

    [
    "https://tse3.mm.bing.net/th?id=OIP.C01uEUrPdc5NV4RPGnG9-wHaFo&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.J1RrI9o8cLCgnWGj4W2XagHaFC&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.tUEyPgYIYT2O0TpqIrt2XgHaHa&pid=Api&P=0&h=180",
    ],
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Cricket Players",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
          itemCount: playersimage.length,
          
          itemBuilder: (context,index){
            List<String> innerList=playersimage[index];
            return Column(
              children: [
                Container(
                  height: 40,
                  width: 200,
                  child: Text(matches[index],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
                SizedBox(
                  height: 700,
                  width: 700,
                  child: ListView.builder(
                    itemCount: innerList.length,
                    itemBuilder:(context,index){
                      return Container(
                        height: 200,
                        width: 200,
                        child: Image.network(innerList[index]),
                      );
                    } )
                )
              ],
              );
          },
          separatorBuilder: (context,index){//return Widget compulsory
            return const Text("");
          },
          ),
      ),
    );
  }
}