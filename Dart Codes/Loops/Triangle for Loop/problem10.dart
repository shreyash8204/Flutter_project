import 'dart:io';

void main(){
  int rows = 6;
  

  for(int i = 1; i <= rows; i++){
    stdout.write("${rows - i}  ");         // Wrong
    int val = i; 
    for(int j = 0; j <= i; j++){
      val = val + rows - j;
      stdout.write("$j  ");
    }
    print(" ");
  }
}