import 'dart:io';

void main(){

  print("Enter the Character : ");
  String ch = stdin.readLineSync()!;

  print("Enter the rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= rows; i++){
        int count = 1;
    for(int j = 1; j <= rows; j++){
      stdout.write("$count$ch   ");
      count++;
    }
    print(" ");
  }
}