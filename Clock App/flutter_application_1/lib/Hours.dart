import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hours extends StatelessWidget {
  int hour;
   Hours({required this.hour,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        hour.toString(),
      style: const TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}