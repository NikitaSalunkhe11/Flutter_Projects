//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Portfilio extends StatefulWidget {
  const Portfilio({super.key});
  @override
  State<Portfilio> createState() => _PortfilioState();
}

class _PortfilioState extends State<Portfilio> {
  int count = -1;
  void counter() {
    if(count == 7){
      count = -1;
    }
    setState(() {
      count++;
    });
  }

  Widget one() {
    return const Text(
      "Name : Nikita Salunkhe",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 1, 7, 12)),
    );
  }

  Widget two() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(border: Border.all(width: 3,color: const Color.fromARGB(255, 4, 7, 9))),
      child: Image.asset("assets/Images/InterviewImage.jpg"),
    );
  }

  Widget three() {
    return const Text(
      "College : TSSM's BSCOER",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 7, 12, 15)),
    );
  }

  Widget four() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(border: Border.all(width: 3,color: const Color.fromARGB(255, 10, 15, 19))),
      child: Image.network("https://tse1.explicit.bing.net/th?id=OIP.2zNzEVv1VfNSPBwd8b-VdgHaHa&pid=Api&P=0&h=180"),
    );
  }

  Widget five() {
    return const Text(
      "Dream Company : NVIDIA",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 8, 13, 16)),
    );
  }

  Widget six() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(border: Border.all(width: 3,color: const Color.fromARGB(255, 11, 17, 21))),
      child: Image.network("https://tse3.mm.bing.net/th?id=OIP.VDjRmvfcZB4-Jm5iE3ScOgHaHa&pid=Api&P=0&h=180"),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border.all(color: Colors.black,width: 2.5),
        title: const Text(
          "PortFolio",
          style: TextStyle(color: Colors.black),
        ),
      
       
      ),
      body:
      Container(
        height:double.infinity,
        width:double.infinity,
        color:const Color.fromARGB(255, 241, 241, 242),
        padding: const  EdgeInsets.only(top: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (count >= 0) ? one() : const Text(""),
            const SizedBox(
              height: 10,
            ),
            (count >= 1) ? two() : Container(),
            const SizedBox(
              height: 10,
            ),
            (count >= 2) ? three() : const Text(""),
            const SizedBox(
              height: 10,
            ),
            (count >= 3) ? four() : Container(),
            const SizedBox(
              height: 10,
            ),
            (count >= 4) ? five() : const Text(""),
            const SizedBox(
              height: 10,
            ),
            (count >= 5) ? six() : Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
       // shape: Border.all(width: 3),
              
        hoverColor: Colors.blue,
        backgroundColor: Colors.white,
        onPressed: counter,
        child: const Text(
          "next",
          style: TextStyle(
            
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black

          ),
          ),
        ),
    );
  }
}