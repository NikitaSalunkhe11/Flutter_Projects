import 'package:flutter/material.dart';

class AlarmData{

  TimeOfDay selectedTime = TimeOfDay.now();
  String alarmName;
  bool toCheck;

  AlarmData(this.selectedTime,this.alarmName, this.toCheck,);

  Map<String,dynamic> todoModelMap(){
    return ({
      'selectedTime':selectedTime,
      'alarmName':alarmName,
      'toCheck':toCheck
    });
  }
 @override
  String toString() {
    return '{selectedTime:$selectedTime,alaramName:$alarmName,toCheck:$toCheck}';
  }

}