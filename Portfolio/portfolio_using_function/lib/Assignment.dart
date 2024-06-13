
import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});

  @override
  State<Assignment> createState()=> _Assignment();
}
class _Assignment extends State<Assignment>{

  int count=0;

  void _incrementCounter(){
      if(count == 6){
        count=1;
      }
      setState((){
        count++;
      });
  }
  // ignore: non_constant_identifier_names
  Widget onefunc(){
    return const Text("Name: Nikita Salunkhe",
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),);
  }
  Widget twofunc(){
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 2.5)),
      height: 150,
      width: 150,
      child:Image.asset("assets/Images/InterviewImage.jpg"),
    );
  }

  Widget threefunc(){
    return const Text("College Name: TSSM's BSCOER",
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),);
  }

  Widget fourfunc(){
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 2.5),color: Colors.black),
      height: 150,
      width: 150,
      child:Image.network("https://tse1.explicit.bing.net/th?id=OIP.2zNzEVv1VfNSPBwd8b-VdgHaHa&pid=Api&P=0&h=180"),
    );
  }

  Widget fivefunc(){
    return const Text("Dream Company Name: NVIDIA");
  }

  Widget sixfunc(){
    return Container( 
      decoration: BoxDecoration(border: Border.all(width: 2.5)),
      height: 150,
      width: 150,
      child:Image.network("https://tse4.mm.bing.net/th?id=OIP.nqz47AVaK35tZbJydhLw9wHaHa&pid=Api&P=0&h=180"),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        shape: Border.all(width: 2.3),
        title: const Text("Portfolio",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => _incrementCounter,
        child:const Text("Next"),
      ), 
      body:Container(
        //color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(top:40,left: 40),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,

        children: [
        //  const Padding(padding: EdgeInsets.only(left: 50)),
          (count >= 0)
          ? onefunc()
          :const Text(""),

          (count >= 1)
          ? twofunc()
          :const SizedBox(),

          (count >= 2)
          ? threefunc()
          :const Text(""),

          (count >= 3)
          ? fourfunc()
          :Container(),

          (count >= 4)
          ? fivefunc()
          :const Text(""),

          (count >= 5)
          ? sixfunc()
          : Container(),

        ]),
      ),
    );
  }
}