import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});

  @override
  State<Assignment> createState()=> _Assignment();
}
class _Assignment extends State<Assignment>{

  void _incrementCounter(){
    setState(() {
      count++;
    });
  }
  int count=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        shape: Border.all(width: 2.0),
        title: const Text("Portfolio",
        style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Colors.white,
      ),
      body:Container(
        padding: const EdgeInsets.only(left: 100),
        child:Column(
          children: [
           // const Padding(padding: EdgeInsets.only(left: 100))
            const Padding(padding: EdgeInsets.all(5.0)),
            (count >= 1)
            ? Container(
            child:const Text("Name: Nikita Salunkhe",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),),)
            :Container(),
            const Padding(padding: EdgeInsets.all(3.0)),
            (count >= 2)
              ?Container(
                decoration: BoxDecoration(border: Border.all(width: 2.0,color: Colors.black)),
                height: 150,
                width: 150,
                padding: const EdgeInsets.all(8.0),
                child:Image.asset("asset/Images/InterviewImage.jpg"),
                )
                :Container(),
                const Padding(padding: EdgeInsets.all(10.0)),
                (count >= 3)
                ? Container(
                child:const Text("College Name: TSSM's BSCOER",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),),)
                :Container(),
                Padding(padding: EdgeInsets.all(3.0)),
                (count >= 4)
                ?Container(
                  decoration: BoxDecoration(border: Border.all(width: 2.0,color:Colors.black)),
                  height: 150,
                  width: 150,
                  child: Image.network("data:image/jpeg;base64,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")
                )
                :Container(),
                Padding(padding: EdgeInsets.all(10.0)),
                (count >= 5)
                ?Container(
                child: const Text("Dream Company Name: NVIDIA",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),),)
                :Container(),
                const Padding(padding:EdgeInsets.all(3.0)),
                (count >= 6)
                ?Container(
                  decoration: BoxDecoration(border: Border.all(width: 2.0,color:Colors.black)),
                  height: 150,
                  width: 150,
                  child:Image.network("data:image/png;base64,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"),
                )
                :Container(),
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:_incrementCounter,
         // child: const Icon(Icons.circle),),
    ),
    );
  }
}