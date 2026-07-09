import 'dart:io';
import 'dart:math';

void main(){
  int rows = 4;
  int num = 1;

for(int i = 1; i <= rows; i++){
 // num = i;
  for(int j = 1; j <= i; j++){
    if(num % 2 == 1){
      stdout.write("${pow(num, 3)}     ");
    }else{
      stdout.write("${pow(num, 2)}     ");    //Wrong
    }
   // stdout.write("$num   ");
    num++;
  }
  print(" ");
}
}