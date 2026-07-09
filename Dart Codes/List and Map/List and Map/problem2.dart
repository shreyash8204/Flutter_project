import 'dart:io';

void main(){
  List<Map<String, dynamic>> users = [
    {"name":"Alice", "planExpired":false},
    {"name":"Bob", "planExpired":true},
    {"name":"Charlie", "planExpired":false},
    {"name":"David", "planExpired":true}
  ];

  print("users with expired plans : ");
  for(var user in users){
    if(user['planExpired'] == true){
      print(user["name"]);
    }
  }
}
