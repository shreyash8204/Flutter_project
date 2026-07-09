import 'dart:io';

void main(){
  int rows = 4;
 
  for(int i = 1; i <= rows; i++){
    int count = i;
    for(int j = 1; j <= rows-(i-1); j++){
      stdout.write("$count   ");
      count++;
    }
    for(int k = 1; k < i; k++){
      stdout.write(" ");
    }
    print(" ");
  }
}