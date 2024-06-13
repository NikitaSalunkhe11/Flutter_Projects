import 'package:flutter/material.dart';
class MyFloatingActionButton extends StatefulWidget {
  @override
  _MyFloatingActionButtonState createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  Color buttonColor = Colors.blue;

  void changeButtonColor() {
    setState(() {
      buttonColor = Colors.purple;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        changeButtonColor();
      },
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: buttonColor,
        child: Icon(Icons.add),
      ),
    );
  }
}