import 'dart:io';

void main()
{
print("Enter a number : ");
int x = int.parse(stdin.readLineSync()!);

if(x > 0)
{
  print("number is positive");
}
else
{
print("number is negative");
}
}