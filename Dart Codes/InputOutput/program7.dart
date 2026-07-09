import 'dart:io';

void main()
{
  print("Enter a Number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter a Number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);

  if(num1 > num2)
  {
    print("$num1 is Maximum than $num2");
  }
  else if(num1 < num2)
  {
    print("$num1 is Minimum than $num2");
  }
  else
  {
    print("Both are Equal.");
  }
}

// Explanation - Here we implement if-else statement for comparing given element to find out which number is Maximum and Minimum.