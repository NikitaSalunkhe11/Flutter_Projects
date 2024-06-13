import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=>_Assignment3State();
}

class _Assignment3State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 9"),
        backgroundColor: const Color.fromARGB(255, 225, 134, 165),
      ), 
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black,width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Image.network(
                          //fit:BoxFit.cover,
                          "https://tse4.mm.bing.net/th?id=OIP.rBc-qmvyldenP0lbMRSsIQAAAA&pid=Api&P=0&h=180",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text("Core2web"),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text("Biencaps"),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text("Incubator"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.check),
                      )
                    ],
                  ),
                )
              ],
            )
          );
        },
      ),
    );
  }
}