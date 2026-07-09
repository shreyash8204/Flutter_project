import 'package:employee_sqflite/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

void insertEmployeeData(EmployeeModel eObj) async {
  Database localDB = await database;
  localDB.insert(
    "Employee", 
    eObj.empMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
}

getEmployeeData() async {
  Database localDB = await database;
  return await localDB.query("Employee");
}

void updateEmployeeData(EmployeeModel eObj) async {
  Database localDB = await database;
  localDB.update(
    "Employee",
    eObj.empMap(),
    where: 'empId=?',
    whereArgs: [eObj.empId],
    );
}

void deleteEmployeeData(int empId) async {
  Database localDB = await database;
  localDB.delete(
    "Employee",
    where: 'empId=?',
    whereArgs: [empId],
  );
}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "EmployeeDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''
        CREATE TABLE Employee(
          empName TEXT,
          empId INT PRIMARY KEY,
          devType TEXT,
          empSal real
        )
        '''
      );
    },
  );
  EmployeeModel emp1 = EmployeeModel(
    empName: "Ramesh", 
    empId: 101, 
    devType: 'DevOps', 
    empSal: 1.5);

  EmployeeModel emp2 = EmployeeModel(
    empName: "Suresh", 
    empId: 102, 
    devType: 'Flutter Dev', 
    empSal: 2.5);

  EmployeeModel emp3 = EmployeeModel(
    empName: "Rajesh", 
    empId: 101, 
    devType: 'FullStack Dev', 
    empSal: 2.0);

  insertEmployeeData(emp1);
  insertEmployeeData(emp2);
  insertEmployeeData(emp3);

  print(await getEmployeeData());

  emp2 = EmployeeModel(
    empName: emp2.empName, 
    empId: emp2.empId, 
    devType: "${emp2.devType}- BackEnd Dev", 
    empSal: emp2.empSal + 0.5,
    );
    updateEmployeeData(emp2);
    print(await getEmployeeData());

    deleteEmployeeData(emp3.empId);
    print(await getEmployeeData());

}

