import 'dart:io';

void main(){
   print("Enter two numbers : ");
   int num1 = int.parse(stdin.readLineSync()!);
   int num2 = int.parse(stdin.readLineSync()!);
   int choice;
   String continueUser;
   do{
      print("1.Addition");
      print("2.Substraction");
      print("3.Multiplication");
      print("4.Division");
      print("5.Modulus");
      
      print("Enter your choice : ");
      choice = int.parse(stdin.readLineSync()!);

      switch(choice){

        case 1 :
                print("Adition of numbers = ${num1+num2}");

        case 2 :
                print("Substraction of numbers = ${num1-num2}");

        case 3 :
                print("Multiplication of numbers = ${num1*num2}");

        case 4 :
                print("Division of numbers = ${num1/num2}");

        case 5 : 
                print("Modulus of two numbers = ${num1/num2}");

        default : 
                print("Enter valid Choice!!!");
      }
        print("Do you want to Continue ?");
        continueUser = stdin.readLineSync()!;
      
   }while(continueUser == 'y');
}