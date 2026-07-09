import 'dart:io';

void main(){
  print("Enter the rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  
  for(int i = 1; i <= rows; i++){
    int count = i;
    for(int j = 1; j <= rows; j++){
      stdout.write("$count   ");
      count += 2;
    }
    print(" ");
  }
}