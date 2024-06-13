import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  TextEditingController alarmNameController = TextEditingController();
  var currentHour = 0;
  var currentMin = 0;
  Color timeFormatColor1 = Colors.red;
  Color timeFormatColor2 = Colors.grey;
  void bottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: 700,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [Icon(Icons.close), Spacer(), Icon(Icons.check)],
                  ),
                  const Text(
                    "New Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 2, 45, 65),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          NumberPicker(
                            minValue: 0,
                            maxValue: 12,
                            value: currentHour,
                            zeroPad: true,
                            infiniteLoop: true,
                            itemWidth: 80,
                            itemHeight: 60,
                            selectedTextStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                            decoration: const BoxDecoration(
                              border: Border.symmetric(
                                horizontal: BorderSide(color: Colors.white),
                              ),
                            ),
                            textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                            onChanged: (value) {
                              setState(() {
                                currentHour = value;
                              });
                            },
                          ),
                          NumberPicker(
                            minValue: 0,
                            maxValue: 60,
                            value: currentMin,
                            zeroPad: true,
                            infiniteLoop: true,
                            itemWidth: 80,
                            itemHeight: 60,
                            onChanged: (value) {
                              setState(() {
                                currentMin = value;
                              });
                            },
                            selectedTextStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                            decoration: const BoxDecoration(
                                border: Border.symmetric(
                                    horizontal:
                                        BorderSide(color: Colors.white))),
                            textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    timeFormatColor1 = Colors.black;
                                    timeFormatColor2 = Colors
                                        .grey; // Reset color for PM container
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  color: timeFormatColor1,
                                  padding: const EdgeInsets.all(15),
                                  child: const Center(
                                    child: Text(
                                      "AM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    timeFormatColor1 = Colors
                                        .grey; // Reset color for AM container
                                    timeFormatColor2 = Colors.black;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  color: timeFormatColor2,
                                  padding: const EdgeInsets.all(15),
                                  child: const Center(
                                    child: Text(
                                      "PM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 2, 45, 65),
                              ),
                              fixedSize:
                                  MaterialStatePropertyAll(Size.fromWidth(150)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))))),
                          child: const Text("Ring Once")),
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 2, 45, 65),
                              ),
                              fixedSize:
                                  MaterialStatePropertyAll(Size.fromWidth(150)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))))),
                          child: const Text("Custom")),
                    ],
                  ),
                  Container(
                    height: 500,
                    width: 400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 2, 45, 65),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Alarm Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: alarmNameController,
                            decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Enter Alarm Name",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                focusColor: Colors.black),
                          ),
                          const Text(
                            "Ringtone",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          DropdownButtonFormField<String>(
                            dropdownColor:
                                const Color.fromARGB(255, 19, 89, 122),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            iconSize: 30,
                            iconEnabledColor: Colors.white,
                            items: ["None", "Calm", "Temple", "Funk"]
                                .map((String category) {
                              return DropdownMenuItem<String>(
                                value: category,
                                child: Text(category,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              );
                            }).toList(),
                            onChanged: (String? value) {},
                            decoration: const InputDecoration(
                              hintText: "None",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List clcokTime = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Container(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text(
            "Alarm",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 10,
                  margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    //color:Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 29, 28, 28),
                  ),
                );
              },
            ),
          )
        ]),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(255, 29, 28, 28),
        ),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.timer,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.hourglass_empty,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "  Alarm",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  "Stopwatch",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  "Timer",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheet();
        },
        child: const Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
    );
  }
}
