
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{//statelessWidget kade build hi abstract method ahe ani ya madhe la jo koni
//implement kerel tyala build() method la body dyavi lagel nahiter tyane swatacha
//class la abstract menun gheych
  const MyApp();
  
  @override
  Widget build(BuildContext context) {
      print("In MyApp build");
    return const MaterialApp();
  }
} 
