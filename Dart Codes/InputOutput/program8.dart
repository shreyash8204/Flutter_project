import 'dart:io';

void main()
{
  print("Enter a Number : ");
  int num = int.parse(stdin.readLineSync()!);

  if(num % 2 == 0)
  {
    print("$num is a Even Number");
  }
  else
  {
    print("$num is a Odd Number");
  }
}

// Explanation - Here we use if-else statement and Even-Odd login to find out given number is Even or Odd.