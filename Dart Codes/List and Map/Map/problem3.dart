import 'dart:io';

void main(){
  print("Enter the name : ");
  String name = stdin.readLineSync()!;

  print("Enter the Marks : ");
  int marks = int.parse(stdin.readLineSync()!);

  Map obj = {"Alice" : 85,
             "Bob" : 78,
             "Charlie" : 92};

  obj[name] = marks;
  print(obj);
}