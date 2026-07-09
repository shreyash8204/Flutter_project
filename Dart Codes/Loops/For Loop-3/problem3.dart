import 'dart:io';

void main(){
  print("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);

  print("Enter the character : ");
  String ch = stdin.readLineSync()!;

  print("Enter the rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= rows; i++){
    for(int j = 1; j <= rows; j++){
      stdout.write("$num$ch  ");
    }
    print(" ");
  }

}