import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=> _Assignment4State();
}

class _Assignment4State extends State{

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 157, 195, 226),
        title: const Text("Daily Flash"),
      ),
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network("https://tse1.mm.bing.net/th?id=OIP.idOiMZbeR7U8pHostaS5owHaJQ&pid=Api&P=0&h=180")),
                      Text("Shreya Goshal",
                      selectionColor: Colors.pink,
                      )
                    ],
                  ),
                )
              ],
            );
        },
      ),
     );
  }
}