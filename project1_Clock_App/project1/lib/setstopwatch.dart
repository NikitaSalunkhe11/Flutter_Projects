import 'dart:async';
import 'package:flutter/material.dart';
import 'ClockApp.dart';
import 'Timer.dart';

class SetStopwatch extends StatefulWidget {
  const SetStopwatch({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StopwatchState();
}

class _StopwatchState extends State<SetStopwatch> {
  late Stopwatch stopwatch;
  late IconData iconValue;
  late Timer t;

  void navigatetonextPage(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>const  MyTimer(),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    iconValue = Icons.arrow_left;
    t = Timer.periodic(const Duration(milliseconds: 60), (timer) {
       setState(() {
         
       });
     });
  }

  String returnFormatedText(){
    var milli = stopwatch.elapsed.inMilliseconds;

    // ignore: non_constant_identifier_names
    String Milliseconds=(milli % 100).toString().padLeft(2,"0");

    String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2,"0");

    String minutes = (((milli ~/ 1000) ~/ 60) % 60).toString().padLeft(2,"0");

    //String hours = (((milli ~/ 60) ~/ 60) % 60).toString();

    return "$minutes:$seconds:$Milliseconds";
  }

  void handleStartStop() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
    } else {
      stopwatch.start();
    }
  }

  void iconChange() {
    setState(() {
      if (iconValue == Icons.arrow_left) {
        iconValue = Icons.pause;
      } else {
        iconValue = Icons.arrow_left;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body:Stack(
        
        children: [
          Container(
            
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1.0),
                  const Color.fromARGB(255, 8, 98, 171).withOpacity(1.0), // Adjust opacity as needed
                ],
              ),
            ),
          ),
       Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Stopwatch",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2,2),
                  blurRadius: 26,
                )
              ],
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 33, 163, 243),
                width: 3,
              ),
            ),
            child: Text(
              returnFormatedText(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  stopwatch.reset();
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 104, 181, 244),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.refresh,
                    color: Color.fromARGB(255, 27, 10, 10),
                    size: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  handleStartStop();
                  iconChange();
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 115, 180, 234),
                    shape: BoxShape.circle,
                  ),
                    child: Icon(iconValue,
                    size: 30,
                    color: Colors.black,
                    ),
                ),
              ),
            ],
          ),
        ],
      ),
        ]
      ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.blue,
        backgroundColor: Colors.black,
            destinations: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: nagivatetoAlarmPage,
                    child: const Icon(
                      Icons.alarm,
                      color: Colors.white,),
                  ),
                  const Text("Alarm",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                  Text("Stopwatch",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: navigatetonextPage,
                    child: const Icon(
                      Icons.timelapse,
                      color: Colors.white,
                    ),
                  ),
                  const Text("Timer",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
            ]
          ),
    );
  }

  void nagivatetoAlarmPage(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>const Alarm(),
      )
    );
  }
}
