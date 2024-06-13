import 'dart:async';
import 'package:flutter/material.dart';

class CountdownScreen extends StatefulWidget {
  final String hours;
  final String minutes;
  final String seconds;

  const CountdownScreen({
    Key? key,
    required this.hours,
    required this.minutes,
    required this.seconds,
  }) : super(key: key);

  @override
  _CountdownScreenState createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> {
  late Timer _timer;
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = _calculateTotalSeconds();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  int _calculateTotalSeconds() {
    int hours = int.parse(widget.hours);
    int minutes = int.parse(widget.minutes);
    int seconds = int.parse(widget.seconds);
    return hours * 3600 + minutes * 60 + seconds;
  }

  String _formatTime(int time) {
    int hours = time ~/ 3600;
    int minutes = (time % 3600) ~/ 60;
    int seconds = time % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_counter == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _counter--;
          });
        }
      },
    );
  }

  void _stopTimer() {
    _timer.cancel();
  }

  void _resetTimer() {
    setState(() {
      _timer.cancel();
      _counter = _calculateTotalSeconds();
      _startTimer();
    });
  }

  void _resetToZero() {
    setState(() {
      _timer.cancel();
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1.0),
                  const Color.fromARGB(255, 8, 98, 171).withOpacity(1.0),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40, right: 40),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _resetTimer();
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  width: 65,
                ),
                const Text(
                  "Count Down",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blue,
                        offset: Offset(2, 2),
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
                    _formatTime(_counter),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (_counter == 0)
                  const Text(
                    'Time\'s up!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                const SizedBox(
                  height: 40,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style:const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(200, 50)),

                        overlayColor: MaterialStatePropertyAll(Colors.blue),

                        side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        elevation: MaterialStatePropertyAll(20.0),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 11, 79, 134)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      onPressed: _stopTimer,
                      child: const Text(
                        'Stop',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 238, 31, 100),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                      height: 20,
                    ),
                    TextButton(
                      style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                        overlayColor: MaterialStatePropertyAll(Colors.blue),
                        side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 11, 79, 134)),
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        elevation: MaterialStatePropertyAll(20.0),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      onPressed: _resetTimer,
                      child: const Text(
                        'Re-Start',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40,
                    height: 20,),
                    TextButton(
                      style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                        overlayColor: MaterialStatePropertyAll(Colors.blue),
                        side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
                        shadowColor: MaterialStatePropertyAll(Colors.blue),
                        elevation: MaterialStatePropertyAll(20.0),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 11, 79, 134)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      onPressed: _resetToZero,
                      child: const Text(
                        'Reset to Zero',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
