import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homePage extends StatefulWidget{
  const homePage({super.key});

  State createState()=> _homePage();
}
class _homePage extends State{

  List<dynamic> users=[];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset API call"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          final val=users[index];
          final name=val['name']['first'];
          final last= val['name']['last'];
          final image=val['picture']['medium'];
          return ListTile(
          //   leading: CircleAvatar(child:Text('${index+1}'),
          //   backgroundColor: Colors.yellow,),
          //   title: Text(name),
          //   subtitle: Text(last),

          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(image),
            ),
            title: Text(name),
            subtitle: Text(last),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:fetchUser,
      ),
    );
  }
  void fetchUser()async{
    print("fetch user call");
    const url='https://randomuser.me/api/?results=10';
    final uri=Uri.parse(url);
    final response=await http.get(uri);
    final body=response.body;
    final json=jsonDecode(body);

    setState(() {
      users=json['results'];
    });
    print("fetchUsers completed");
  }
}