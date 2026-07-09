import 'dart:io';

void main(){
  print("Enter the rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int count = 12;
  for(int i = 1; i <= rows; i++){
    for(int j = 1; j <= rows; j++){
        stdout.write("$count  ");
    }
    count--;
    print(" ");
  }
}