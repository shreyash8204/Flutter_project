import 'dart:io';

void main(){
    print("Enter rows : ");
    int rows = int.parse(stdin.readLineSync()!);
    
    for(int i = 1; i <= rows; i++){
       int count = 4;
        for(int j = 1; j <= rows; j++){
            stdout.write("$count   ");
            count++;
        }
        print(" ");
    }
}