import 'dart:io';

void main()
{
print("Enter a Age : ");
int age = int.parse(stdin.readLineSync()!);

if(age > 18)
{
  print("You can cast Vote");
}
else
{
print("You cannot cast vote");
}
}