import 'dart:io';
void main(){
  int row = 4;
  int count = 10;

  for(int i = 1; i <= row;i++){
    for(int j = 1; j <= i; j++){
      stdout.write("$count ");
      count--;
    }
    for(int k = 1; k <= row-i; k++){
      stdout.write("  ");
    }
    print(" ");
  }
}