
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Quiz_app extends StatefulWidget {
   const Quiz_app({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "question": "Identify the command which is used to remove file?",
      "options": ["delete", "rm", "dm", "erase"],
      "answerIndex": 1,
    },
    {
      "question": "FIFO Scheduling is a type of:",
      "options": ["Pre-emptive scheduling", "Non-pre-emptive scheduling", "Deadline scheduling", "None of the above"],
      "answerIndex": 1,
    },
    {
      "question": "UNIX is written in which language?",
      "options": ["C#", "C++", "C", ".NET"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Larry Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int selectAnswerIndex = -1;
  int noOfCorrectAnswer = 0;

  MaterialStatePropertyAll<Color?> checkAnswer(int buttonIndex){
    if(selectAnswerIndex  != -1){
      if(buttonIndex == allQuestions[questionIndex]["answerIndex"]){
        return const MaterialStatePropertyAll(Colors.green);
      }else if(buttonIndex == selectAnswerIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(null);
      }
    }else{
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage(){
    if(selectAnswerIndex == -1){
      return;
    }
    if(selectAnswerIndex == allQuestions[questionIndex]["answerIndex"]){
      noOfCorrectAnswer += 1;
    }
    if(selectAnswerIndex != -1){
      if(questionIndex == allQuestions.length-1){
        setState(() {
          questionScreen = false;
        });
      }
      selectAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }
  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 171, 206, 233),
        body: Column(
          children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Questions : ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 380,
            height: 100,
            child: Center(
              child: Text(allQuestions[questionIndex]["question"],
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
                        ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(0),
            ),
            onPressed: (){
              if(selectAnswerIndex == -1){
                setState(() {
                  selectAnswerIndex=0;
                });
              }
            },
            child: Text("A. ${allQuestions[questionIndex]["options"][0]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            onPressed: (){
              if(selectAnswerIndex == -1){
                setState(() {
                  selectAnswerIndex=1;
                });
              }
            },
            child: Text("B. ${allQuestions[questionIndex]["options"][1]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            onPressed: (){
              if(selectAnswerIndex == -1){
                setState(() {
                  selectAnswerIndex=2;
                });
              }
            },
            child: Text("C. ${allQuestions[questionIndex]["options"][2]}",
            style:const  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            onPressed: (){
              if(selectAnswerIndex == -1){
                setState(() {
                  selectAnswerIndex=3;
                });
              }
            },
            child: Text("D. ${allQuestions[questionIndex]["options"][3]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),),
      );
    }else{
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: 
        SizedBox(
          width:double.infinity,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset("assets/Images/download.jpeg",
          // height: 700,
          // width: 200,
          ),
          const Text("Congratulations!!!",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You Have Completed the Quiz",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),),
            const SizedBox(
              height: 15,
            ),
            Text("$noOfCorrectAnswer/${allQuestions.length}"),
            ElevatedButton(
              style:const ButtonStyle(
                backgroundColor:MaterialStatePropertyAll(Color.fromARGB(255, 152, 201, 241))
               ),
              onPressed: (){
                questionIndex=0;
                questionScreen=true;
                noOfCorrectAnswer=0;
                selectAnswerIndex=-1;
                setState(() {
                  isQuestionScreen();
                });
              },
              child: const Text("Reset",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 18, 14, 7),
              ),))
        ],
        ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
