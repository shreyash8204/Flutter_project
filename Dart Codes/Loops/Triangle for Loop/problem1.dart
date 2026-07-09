import 'dart:io';

void main(){
  print("Enter rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= rows; i++){
    for(int j = 1; j <= i; j++){
      stdout.write("C2W   ");
    }
    for(int k = 1; k <= rows-i; k++){
      stdout.write(" ");
    }
  print(" ");
  }
}