import 'package:flutter/material.dart';

class ListViewAssignment extends StatefulWidget{
  const ListViewAssignment({super.key});

  @override
  State createState()=> _ListViewState();
}
class _ListViewState extends State{

  List<String> match=["One-day Match","Test Match","T-20 Match"];
  int i=0;
  
  List playerList=[
    "https://tse2.mm.bing.net/th?id=OIP.TgMgSiX8_uUhM5TEUhvO4QHaEG&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.sQUDeSJWqv3jt9AZPQDIvgHaFj&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.NyeOTauZgs6nwNM3tyaGOAHaJ3&pid=Api&P=0&h=180",

    "https://tse3.mm.bing.net/th?id=OIP.WS00WWVCBmIIk4jXpgAzeAHaEK&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.8v8MY3YWwXWBWE68fUvZ-gHaEK&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.FQzn2GPP1bK4iErfqX0drwHaEo&pid=Api&P=0&h=180",

    "https://tse3.mm.bing.net/th?id=OIP.C01uEUrPdc5NV4RPGnG9-wHaFo&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.J1RrI9o8cLCgnWGj4W2XagHaFC&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.tUEyPgYIYT2O0TpqIrt2XgHaHa&pid=Api&P=0&h=180",
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Cricket Players"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      // body:ListView.separated(

      //   itemCount: match.length,
      //   separatorBuilder: (context, index) {
      //     return 
      //     (count == 3)?
      //      Container(
      //       height: 30,
      //       width: 100,
      //       color: const Color.fromARGB(255, 234, 137, 170),
      //       child:Text(match[index]), 
      //     )
      //     :Container();
      //   },
        // itemBuilder: (BuildContext context, int index) {
        //   return 
        // body:ListView.builder(
        //     itemCount: playerList.length,
        //     itemBuilder: (context,index){
        //       (index %3 == 0)
        //       ? ListView.separated(
        //         itemCount: match.length,
        //         separatorBuilder: (context, index) {

        //           return Container(
        //           height: 30,
        //           width: 100,
        //           color:const Color.fromARGB(255, 234, 137, 170),
        //           child:Text(match[index]), 
        //           );
        //         },
        //         itemBuilder: (BuildContext context, int index) {
        //           return Container(
        //           height: 30,
        //           width: 100,
        //           color:const Color.fromARGB(255, 234, 137, 170),
        //           child:Text(match[index]), 
        //           );
        //           },
        //       ):Container();

        //       (index % 3 == 0)
        //       ? printtext()
        //       :Container();
        //       return Container(
        //         height: 300,
        //         width: 300,
        //         margin: const EdgeInsets.all(10),
                
        //         child: Image.network(
        //           playerList[index]), 
        //       );
              
        //     }    
        //   );
        // },
        // separatorBuilder: (context, index) {
        //   return 
        //   (count == 3)?
        //    Container(
        //     height: 30,
        //     width: 100,
        //     color: const Color.fromARGB(255, 234, 137, 170),
        //     child:Text(match[index]), 
        //   )
        //   :Container();
        // },)
      body: ListView.separated(
        itemCount: playerList.length,
        itemBuilder: (context,index){

          // Container(
          //   height: 40,
          //   width: 200,
          //   child: Text(match[i++]),
          // );
          
          return Container(
            height: 300,
            width: 300,
            child:Image.network(playerList[index]),
          );
        },
         separatorBuilder: (BuildContext context, int index){ 
          return 
          ((index+1) % 3 == 0 && i < 3)
          ? Container(
            height: 40,
            width: 200,
            padding: EdgeInsets.only(left: 150),
            child: Text(match[i++],
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),),
          ):Container();
         },),
    );
  }
}