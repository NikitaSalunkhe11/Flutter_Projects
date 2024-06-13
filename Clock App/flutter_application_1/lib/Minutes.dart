import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Minutes extends StatelessWidget {
  int mins;
   Minutes({required this.mins,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        mins < 10 ? '0'+ mins.toString():mins.toString(),
      style: TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
      

    );
  }
}