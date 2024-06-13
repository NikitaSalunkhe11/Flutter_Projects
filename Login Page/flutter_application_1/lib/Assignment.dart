
import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State createState() => _Login_Page();
}

class _Login_Page extends State {
  final TextEditingController _usernameCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();
  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 243, 230, 233),
      body: Form(
        key:_formkey,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Color.fromARGB(255, 248, 248, 248),Color.fromARGB(255, 243, 199, 214)]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                
                  decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                  //decoration: ShapeDecoration(shape: CircleBorder.)
                  child: Image.network(
                    fit: BoxFit.fill,
                    "https://tse2.mm.bing.net/th?id=OIP.cxcqa9RvhGnRd8x3N2oBdgAAAA&pid=Api&P=0&h=180",
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 80),
                child: Text(
                  "Enter Username",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:70,right: 70),
                child: TextFormField(
                   controller: _usernameCon,
                    decoration: InputDecoration(
                      hintText: 'Enter username',
                      prefixIcon: const Icon(Icons.person_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 245, 131, 123), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  validator: (usernameCon){
                    if(usernameCon == null || usernameCon.isEmpty ){
                      return 'Enter Username';
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              const Padding(
                padding:  EdgeInsets.only(left:80.0),
                child: Text(
                  "Enter Password",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70,right: 70),
                child: TextFormField(
                  controller: _passwordCon,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 245, 131, 123), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      
                    ),
                  validator: (passwordCon){
                    if(passwordCon == null || passwordCon.isEmpty){
                      return 'Enter password';
                    }else{
                      return null;
                    }
                  },
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  height: 30,
                  width: 200,
                  child: ElevatedButton(
                      style:const  ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: (){
                        bool loginValidated = _formkey.currentState!.validate();

                        if(loginValidated){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Login Successful!!!"),
                            ),
                          );
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Login Failed")
                            ),
                          );
                        }
                      },
                      child: const Center(
                        child:  Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

