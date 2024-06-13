import 'package:flutter/material.dart';
import 'package:row_column/column.dart';
import 'package:row_column/flag.dart';
import 'package:row_column/rowdemo.dart';

void  main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget{
  const myApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Flag(),
    );
  }
}