import 'package:flutter/material.dart';
import 'package:flutter_application_1/to_do_app.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite_ffi;
import 'package:sqflite/sqflite.dart';


dynamic database;
//databaseFactory DatabaseFactory = databaseFactoryFfi;

SqfliteDatabaseFactory? databaseFactory;

DatabaseFactory databaseFactoryFfi;

class SqfliteDatabaseFactory {

}

void initializeDatabaseFactory() {
  sqflite_ffi.databaseFactory = sqflite_ffi.databaseFactory;
}
Future<void> main() async {
  runApp(const MyApp());
  initializeDatabaseFactory();
  database = openDatabase(
    join(await getDatabasesPath(),'taskdb.db'),
    version: 1,
    onCreate: (db,version,){
      db.query(
        '''
          create table tasktable(
            title Text NOT NULL,
            description Text,
            date INT
          )
        '''
      );
    }
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ToDoApp(),
    );
  }
}