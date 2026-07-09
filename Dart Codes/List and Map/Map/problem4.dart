import 'dart:io';

void main(){
  Map player = {"Rohit Sharma" : 45,
                "Virat Kohli" : 18,
                "MS Dhoni" : 7,
                "Hardik Pandya" : 33};

  print("Enter your Name : ");
  String name = stdin.readLineSync()!;

  if(player.containsKey(name)){
    print("Jersey No of ${name} = ${player[name]}");
  }else{
    print("Player Not Found");
  }
}