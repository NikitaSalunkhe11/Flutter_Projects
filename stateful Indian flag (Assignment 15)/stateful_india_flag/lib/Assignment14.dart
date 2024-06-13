// ignore: file_names
import 'package:flutter/material.dart';

class IndiaFlag extends StatefulWidget{
  const IndiaFlag({super.key});

  @override
  State<IndiaFlag> createState() => _IndiaFlagState();
}

class _IndiaFlagState extends State<IndiaFlag>{
  
  int _count=0;

  void _incrementCounter(){
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:const Text(
          "India Flag",
        ),
      ),
      backgroundColor: Color.fromARGB(255, 246, 215, 234),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                (_count >= 1)
                ? Container(
                  height: 400,
                  width:10,
                  color:Colors.brown,
                )
                :Container(),
              ],
            ),
            Column(
              children: <Widget>[
                (_count >=2)
                ? Container(
                  height: 50,
                  width:200,
                  color: Colors.orange,
                )
                :Container(),

                (_count >= 3)
                ? Container(
                  height: 50,
                  width: 200,
                  color: Colors.white,
                  child:(_count >= 4)
                  ? Image.network("https://tse3.mm.bing.net/th?id=OIP.uyeDxiTgXELPpHkC_0dE_gHaHa&pid=Api&P=0&h=180")
                  :Container(),
                )
                :Container(),

                  (_count >= 5)
                  ? Container(
                    height: 50,
                    width: 200,
                    color: Colors.green,
                  )
                  :Container(),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}