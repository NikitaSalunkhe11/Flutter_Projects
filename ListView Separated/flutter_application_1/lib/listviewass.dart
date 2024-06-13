import 'package:flutter/material.dart';

class ListViewass extends StatefulWidget{

 const ListViewass({super.key});
  @override
  State createState() => _ListViewassState();
}
class _ListViewassState extends State{
List<List<String>> playerList = [
  [
    "https://tse1.mm.bing.net/th?id=OIP.dTzUk2Y5dDjWO4jYcGwGiAHaFH&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.Adz4PcQi6U32PQLKaHabTQHaD4&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.boAaceGcv0lmDXv6QOMyfAHaEp&pid=Api&P=0&h=180",
  ],
  [
    "https://tse4.mm.bing.net/th?id=OIP.7QPfOrKgiVF8VfjMU_URugHaD4&pid=Api&P=0&h=180",
    "https://tse3.mm.bing.net/th?id=OIP.a43sdS-G9GEwlom48Ew4dwHaF8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP._TLL5hmz6Xx65nHAQINeLgHaEK&pid=Api&P=0&h=180"
  ],
  [
    "https://tse3.mm.bing.net/th?id=OIP.93JQXxw3G666VepwWHhwNQHaD4&pid=Api&P=0&h=180",
    "https://images.indianexpress.com/2023/08/Rinku-IND.jpg",
    "https://tse4.mm.bing.net/th?id=OIP.FQW04v8Hv4Z3U4Lr7O5ZMgHaFA&pid=Api&P=0&h=180"
  ],
];

  List<String> match= ["Test Match" , "Oneday Match" , "T20 Match"];
  //int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Cricket",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: 
        Center(
          child: Container(
            height: 600,
            width: 250,
            child: ListView.separated(
              itemCount:playerList.length,
              itemBuilder: (context , index){
                List sortedPlayer = playerList[index];
                return  Column(
                  children: [
                    Text(match[index],
                    style:const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),),
                    SizedBox(
                      height: 600,
                      child: ListView.builder(
                        itemCount: sortedPlayer.length,
                        itemBuilder: (context , index){
                            return Container(
                              height: 200,
                              width: 200,
                              child: Image.network(sortedPlayer[index]),
                            );
                        }
                  
                      ),
                    )
                  ],
                );
              },
              separatorBuilder:(context, index) {
                return const Text("");
              },
            ),
          ),
        ),
    );
  }
}