import 'dart:io';

void main(){
  print("Enter the rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int count = 1;
  for(int i = 1; i <= rows; i++){
    for(int j = 1; j <= 5; j++){
      if((i + j) % 2 == 0){
        stdout.write("${count++}    ");
      }else{
        stdout.write("*    ");
      }
    }
    print(" ");
  }
}