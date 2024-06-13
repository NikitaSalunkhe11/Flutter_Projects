import 'package:flutter/material.dart';

// ignore: camel_case_types
class quiz_app extends StatefulWidget {
  const quiz_app({super.key});

  @override
  State<quiz_app> createState() => _quiz_app();
}

// ignore: camel_case_types
class _quiz_app extends State<quiz_app> {
  int _no = 1;
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;

  List<String> l1=["1990","2002","2012","1999","2013","2017","2021","2030","2021","2019"];
  List<String> l2=["1990","2002","2012","1999","2013","2017","2021","2030","2021","2019"];
  List<String> l3=["1990","2002","2012","1999","2013","2017","2021","2030","2021","2019"];
  List<String> l4=["1990","2002","2012","1999","2013","2017","2021","2030","2021","2019"];
  void _incrementNo() {
    setState(() {
      _no++;
    });
  }

  void _decrementNo() {
    setState(() {
      _no--;
    });
  }

  Widget _question() {
    if (_no == 11) {
      _no = 1;
    }
    if(_no == 0){
      _no = 1;
    }
    if (_no == 1) {
      option1 = true;
      return const Text(
        "Question 1: 'HTML' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 2) {
      option3 = true;
      return const Text(
        "Question 2: 'C' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 3) {
      option3 = true;
      return const Text(
        "Question 3: 'C++' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 4) {
      option3 = true;
      return const Text(
        "Question 4: 'Java' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 5) {
      option3 = true;
      return const Text(
        "Question 5: 'dart' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 6) {
      option3 = true;
      return const Text(
        "Question 6: 'flutter' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 7) {
      option3 = true;
      return const Text(
        "Question 7: 'C#' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 8) {
      option3 = true;
      return const Text(
        "Question 8: 'Python' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 9) {
      option3 = true;
      return const Text(
        "Question 9: 'Javascript' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (_no == 10) {
      option3 = true;
      return const Text(
        "Question 10: 'CSS' Language is invented in which year?",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      );
    } else {
      return const Text("");
    }
  }

  Color optionvalue1() {
    setState(() {
    Container(
        height: 30,
        width: 200,
        color: (option1 == true) ? Colors.green : Colors.red,
        );
    });
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 60, 105),
        title: const Text(
          "Tech Quiz App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: const Color.fromARGB(255, 116, 186, 243),
            child: Center(
              child: Text(
                "Question : $_no/10",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            //for Spacing
            height: 30,
            width: 30,
          ),
          SizedBox(
            //to give question in center
            height: 50,
            width: double.infinity,
            child: Center(
              child: _question(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Option 1: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              Container(
                height: 30,
                width: 200,
                color: const Color.fromARGB(255, 159, 211, 238),
                child: TextButton(
                  onPressed: optionvalue1,
                  child:
                  (_no == _no)
                  ?Text(l1[_no-1],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),)
                  :const Text(""),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Option 2: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              Container(
                height: 30,
                width: 200,
                color: const Color.fromARGB(255, 159, 211, 238),
                child: TextButton(
                  onPressed: optionvalue1,
                  child: 
                  (_no == _no)
                  ?Text(l2[_no - 1],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),)
                  :Text(""),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Option 3: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              Container(
                height: 30,
                width: 200,
                color: const Color.fromARGB(255, 159, 211, 238),
                child: TextButton(
                  onPressed: optionvalue1,
                  child: 
                  (_no == _no)
                  ?Text(l3[_no-1],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),)
                  :Text("")
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Option 4: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              Container(
                height: 30,
                width: 200,
                color: const Color.fromARGB(255, 159, 211, 238),
                child: TextButton(
                  onPressed: optionvalue1,
                  child: (_no==_no)?
                  Text(l4[_no-1],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),)
                  :Text(""),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(
              onPressed: _decrementNo,
              child: const Icon(Icons.arrow_back),
            ),
            ElevatedButton(
              onPressed: _incrementNo,
              child: const Icon(Icons.arrow_forward),
            ),
          ],),
        ],
      ),
    );
  }
}
