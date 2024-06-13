import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget{
  const TextFieldDemo({super.key});

  @override
  State createState()=>_TextFieldDemo();
}
class _TextFieldDemo extends State{

  final TextEditingController _inputemailcon = TextEditingController();
  final TextEditingController _inputmobcon = TextEditingController();
  final TextEditingController _inputpasscon = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 240, 214, 222),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOG",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "in",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            Container(
              height: 40,
            ),
            SizedBox(
              width:300,
              child: TextField(
                controller: _inputemailcon,
                
                decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.email_outlined,color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 2,color: Color.fromARGB(255, 16, 122, 138)),
                  ),
                  hintText:'Enter E-mail',
                  //prefix: const Icon(Icons.email_outlined,color: Colors.black),

                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2,color: Colors.red),
                    ),
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            SizedBox(
              width:300,
              child: TextField(
                controller: _inputmobcon,
                decoration: InputDecoration(
                  hintText:'Enter mobile No.',
                  prefixIcon: const Icon(Icons.phone,color: Colors.black,),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 2,color: Color.fromARGB(255, 16, 122, 138)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2,color: Colors.red),
                    ),
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _inputpasscon,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock,color: Colors.black,),
                  hintText: 'Enter Password',
                  suffixIcon: const Icon(Icons.remove_red_eye_rounded,color: Colors.black,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(width: 2,color: Color.fromARGB(255, 38, 105, 144))
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 2,color: Colors.red),
                  )
                ),
                onChanged: (value) {
                  print(value);
                },
                onSubmitted: (value){
                  print(value);
                },
              ),
            ),
            const Text("Please Enter more than 5 character"),
            Container(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
               
              
                style: const ButtonStyle(
                
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)))
              ),
                onPressed: (){
                  String val1=_inputemailcon.text;
                  String val2=_inputmobcon.text;
                  String val3=_inputpasscon.text;
                  print(val1);
                  print(val2);
                  print(val3);
              }, child: const Text("Login",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                
              ),)),
            )
          ],
        ),
      ),

    );
  }
}