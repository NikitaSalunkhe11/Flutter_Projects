
import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3>{
  int? selectedIndex = 0;

  final List<String> imageList=[
    "https://tse3.mm.bing.net/th?id=OIP.LH3VRYa03aUJwOfqtFUeuAHaJP&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.8qkBIhQmzUjTvvTxRvdXaQHaEK&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.Us3vornr4pB02KFIC55WZwHaFF&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.oq-lcYbhyFWCx_WAIlKyKQHaEo&pid=Api&P=0&h=180",
  ];
  void showNextImage(){
    setState((){
      selectedIndex = selectedIndex! + 1;
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title :const Text("Display Images",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text(
                'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}