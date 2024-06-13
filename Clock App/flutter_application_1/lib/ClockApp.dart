import 'package:flutter/material.dart';
import 'package:flutter_application_1/ModelClass.dart';
import 'setstopwatch.dart';
class Alarm extends StatefulWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  State createState() => _AlarmState();
}

dynamic alarmname;

class _AlarmState extends State<Alarm> {
  Color timeFormatColor1 = const Color.fromARGB(255, 6, 65, 114);
  Color timeFormatColor2 = const Color.fromARGB(255, 6, 65, 114);

  var hour = 0;
  var min = 0;
  bool toCheck = false;
  dynamic value = false;
  TextEditingController alarmController = TextEditingController();
  TimeOfDay selectedTime = TimeOfDay.now();

  
  void editAlarm(AlarmData alarmObj) {
    selectedTime = alarmObj.selectedTime;
    alarmController.text = alarmObj.alarmName;
    toCheck = alarmObj.toCheck;
    _showAddTextBottomSheet(
      true,
      alarmObj,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(1.0),
              const Color.fromARGB(255, 8, 98, 171)
                  .withOpacity(1.0), 
            ],
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Alarm",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: alarm.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onLongPress: () {
                        bottomSheetTimerDelete(alarm[index]);
                      },
                      onTap: () {
                        setState(() {
                          editAlarm(alarm[index]);
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(2),
                        height: 90,
                        width: 350,
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 63, 158, 235),
                            width: 2,
                          ),
                          color: Color.fromARGB(255, 27, 86, 133),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    (alarm[index].selectedTime).format(context),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Spacer(),
                                  Checkbox(
                                    shape: const CircleBorder(
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 10,
                                          style: BorderStyle.solid),
                                      eccentricity: 1,
                                    ),
                                    value: alarm[index]
                                        .toCheck, // Use value from list
                                    onChanged: (value) {
                                      setState(() {
                                        alarm[index].toCheck = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                              Text(
                                alarm[index].alarmName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTextBottomSheet(false);
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.blue,
          backgroundColor: Colors.black,
          destinations: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
                Text(
                  "Alarm",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: navigatetonextPage,
                  child: const Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Stopwatch",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timelapse,
                  color: Colors.white,
                ),
                Text(
                  "Timer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ]),
    );
  }

  void bottomSheetTimerDelete(AlarmData alarmData) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 50,
          width: double.maxFinite,
          color: Colors.black,
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                   alarm.remove(alarmData);
                });
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

  List<AlarmData> alarm = [];

//SubmitTimeData

  void submitTimeData(bool toEdit, [AlarmData? alarmData])async {
    print(toEdit);
    if (toEdit) {
    // print("----------------------");
      setState(() {
        alarmData?.selectedTime = selectedTime;
        alarmData?.alarmName = alarmController.text;
        alarmData?.toCheck = true;
      });
    } else {
      setState(() {
        // insertAlarmData(
        //   AlarmData(
        //   selectedTime,alarmname,toCheck
        //   )
        // );
         alarm.add(AlarmData(selectedTime, alarmController.text, true));
      });
        
       
      
    }
    alarmController.clear();
    selectedTime=TimeOfDay.now();
  }

//  BottomSheet
  void _showAddTextBottomSheet(bool toEdit, [AlarmData? alarmData]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(color: Colors.blue, width: 2),
                gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(1.0),
                    const Color.fromARGB(255, 8, 98, 171).withOpacity(1.0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text(
                          "New Timer",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // print(index);
                            toEdit
                                ? submitTimeData(toEdit, alarmData)
                                : submitTimeData(
                                    toEdit); // Submit the selected time
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 4, 6, 9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 24, 104, 179),
                          blurStyle: BlurStyle.outer,
                          offset: Offset(-5, 5),
                          blurRadius: 30,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Set Alarm Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue)),
                          onPressed: () async {
                            final TimeOfDay? pickedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay(hour: hour, minute: min),
                            );
                            if (pickedTime != null) {
                              setState(() {
                                selectedTime = pickedTime;
                              });
                            }
                          },
                          child: const Text(
                            "Pick a Time",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: alarmController,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        hintText: "Enter Alarm Name",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        focusColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void navigatetonextPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SetStopwatch(),
        ));
  }
}