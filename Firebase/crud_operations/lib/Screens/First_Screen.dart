import 'package:crud_operations/Screens/Register_Screen.dart';
import 'package:crud_operations/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget{
  const FirstScreen({super.key});

  @override
  State createState()=>_FirstScreenState();
}
class _FirstScreenState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
              child: Image.asset("assets/image1.png"),
            ),
            const Text("Let's Get Started",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(
              height: 10,
            ),
            const Text("Never the Better time to start now",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black26,
            ),),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: CustomButton(
                  text: "Get Started",
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const RegisterScreen(),
                    ),
                  );
                }
                ),
              ),
            )
          ],
        ),
      ),  
    );
  }
}