import 'dart:io';
void main(){
  print("Enter you name : ");
  String Std_name = stdin.readLineSync()!;

  print("Enter your College Name : ");
  String Coll_name = stdin.readLineSync()!;

  print("Enter your Address : ");
  String address = stdin.readLineSync()!;

  Map obj = {};

  obj["Name"] = Std_name;
  obj["College"] = Coll_name;
  obj["Address"] = address;

  print(obj);
}