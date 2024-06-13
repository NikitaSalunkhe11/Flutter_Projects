import 'package:flutter/material.dart';

class bottomsheet extends StatefulWidget{
  const bottomsheet({super.key});

  @override
  State createState()=> _bottomsheet();
}
class _bottomsheet extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              context: context, 
              builder:(BuildContext context){
                return SizedBox(
                  height: 400,
                  width: 800,
                  child: Center(
                    child:ElevatedButton(
                      onPressed:(){
                        Navigator.pop(context);
                      },
                      child:const Text("Close"),
                    ),
                  ),
                );
              }
            );
          },
          child: const Text("Press Button"),
        ),
      ),
    );
  }
}