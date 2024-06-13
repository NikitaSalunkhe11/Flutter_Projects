import 'package:flutter/material.dart';
import 'package:theme/Homepage.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.red,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor:Colors.purple,
          background: Colors.grey,
          primary: Colors.blue
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            fixedSize: const Size(300,10),
          ), 
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.red,
            fontSize: 26.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
      home:const HomePage(
        title:'Flutter Demo Home Page'),  
    );
  }
}