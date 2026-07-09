import "dart:io";

void main()
{
  int temp = 0;
  print("Enter number 1");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Number 1 before Swapping is : $num1");
  print("Number 2 before Swapping is : $num2");
  
  temp = num1;
  num1 = num2;
  num2 = temp;

  print("Number 1 after swapping is : $num1");
  print("Number 2 after swapping is : $num2");

}

// Explanation : In this program we take two numbers as input from user and swap them with each other using a temp variable.