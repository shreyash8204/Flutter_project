import "dart:io";

void main()
{
  print("Enter Number1 : ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter Number2 : ");
  int num2 = int.parse(stdin.readLineSync()!);

  int num3 = num1 + num2;
  print("The sum of two no is : $num3");
}

//Explanation - Here we take 2 no as input and pint there sum in the terminal. 