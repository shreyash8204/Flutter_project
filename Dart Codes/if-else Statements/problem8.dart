import 'dart:io';

void main()
{
  print("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  if(num % 3 == 0 && num % 5 == 0)
  {
     print("$num is disible by 3&5");
  }
  else if(num % 3 == 0)
  {
    print("$num is divisible by 3");
  }
  else if(num % 5 == 0)
  {
    print("$num is divisible by 5");
  }
  else
  {
    print("$num is not divisible by 3&5");
  }
}