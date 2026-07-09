import 'dart:io';

void main(){
  print("Enter rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int count = 0;
  for(int i = 1; i <= rows; i++){
      count = i;
    for(int j = 1; j <= rows; j++){
      stdout.write("$count   ");
      count++;
    }
    print(" ");
  }
}