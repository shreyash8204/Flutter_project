import 'dart:io';

void main(){
  print("Enter your name : ");
  String Std_name = stdin.readLineSync()!;

  print("Enter your College name : ");
  String Coll_name = stdin.readLineSync()!;

  print("Enter your Address : ");
  String address = stdin.readLineSync()!;

  Map obj = {};

  obj["Name"] = Std_name;
  obj["College"] = Coll_name;
  obj["Address"] = address;

  print(obj);

  print("Enter new Address : ");
  String New_Add = stdin.readLineSync()!;

  obj["Address"] = New_Add;
  print(obj);
}