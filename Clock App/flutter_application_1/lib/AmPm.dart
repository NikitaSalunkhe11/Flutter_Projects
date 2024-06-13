import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmPm extends StatelessWidget {
  bool isAmPm;
   AmPm({required this.isAmPm,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          isAmPm == true ? 'am': 'pm',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}