import 'dart:io';

void main(){
  int rows = 4;

  for(int i = 1; i <= rows; i++){
    int count = i;
    for(int j = 1; j <= i; j++){
      stdout.write("$count  ");
      count++;
    }
    for(int k = 1; k <= rows-i; k++){
      stdout.write(" ");
    }
    print(" ");
  }
}