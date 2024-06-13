import 'package:flutter/material.dart';

class Assignmen5 extends StatefulWidget {
  const Assignmen5({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignmen5> {
  int _tappedIndex = -1; // Initially no container is tapped
  List<Color> _containerColors = [
    const Color.fromARGB(255, 252, 250, 250),
    const Color.fromARGB(255, 252, 251, 251),
    const Color.fromARGB(255, 246, 245, 245),
  ];

  void changeColor(int index) {
    setState(() {
      if (_tappedIndex == index) {
        // If the same container is tapped again, reset all to initial colors
        _tappedIndex = -1;
        _containerColors = [
          const Color.fromARGB(255, 252, 250, 250),
          const Color.fromARGB(255, 252, 251, 251),
          const Color.fromARGB(255, 246, 245, 245),
        ];
      } else {
        // Change the tapped container color to red and others to white
        _tappedIndex = index;
        _containerColors = List.generate(3, (i) {
          return i == index ? Colors.red : Colors.white;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (index) {
            return GestureDetector(
              onTap: () => changeColor(index),
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: _containerColors[index],
                  border: Border.all(color: Colors.black, width: 1.5),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
