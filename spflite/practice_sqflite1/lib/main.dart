import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Employee{
  final String empId;
  final String empName;
  final String empSal;

  Employee({
    required this.empId,
    required this.empName,
    required this.empSal,
  });

  Map<String,dynamic> getEmployeeMapData(){
    return {
      "empId":empId,
      "empName":empName,
      "empSal":empSal,
    };
  }
}

Future<dynamic> insertData(Employee obj)async {
  print("in insert method");
  final localDB = await database;

  await localDB.insert(
    "empTable",
    obj.getEmployeeMapData(),
    ConflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("end of insert method");
}

Future<List<Employee>> getEmployeeData() async{
  final localDB = await database;

  List<Map<String,dynamic>> employeeList = await localDB.query('empTable');
  return List.generate(employeeList.length, (index)
  {
    return Employee(
      empId:employeeList[index]['empId'],
      empName: employeeList[index]['empName'],
      empSal: employeeList[index]['empSal'],
    );
  });

}
Employee emp1=Employee(
  empId: "1",
  empName: "Sarthak",
  empSal: "5.0",
);

Employee emp2=Employee(
  empId: "2",
  empName:"Nikita",
  empSal: "3.0"
);

dynamic database;
void main()async{
  runApp(const MyApp());
  print("Start Main");
  database = openDatabase(
    join( await getDatabasesPath(),"Employeedb.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE empTable(
          empId INT Primary Key,
          empName TEXT 
          empSal REAL
        );
        '''
      );
      print("Database Created");
    },
  );
  insertData(emp1);
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp();
  }
}