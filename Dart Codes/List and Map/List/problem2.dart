import 'dart:io';

void main(){
  int flag = 0;

  List<String> cities = ["Satara", "Mumbai", "Pune", "Sangli", "Kolhapur", "Baramati"];

  print("Enter the City name : ");
  String city = stdin.readLineSync()!;

  for(int i = 0; i < cities.length; i++){
    if(cities[i] == city){
      cities.removeAt(i);
      flag = 1;
      break;  
  }
}
  if(flag == 0){
     print("city not found!!!");
   }
  print(cities);
}