
import "dart:io";

void main()
{
  print("Enter your Name : ");
  String? name = stdin.readLineSync();

  print("Enter your Age : ");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter your Dream company Name : ");
  String? cmp= stdin.readLineSync();

  print("Name is $name");
  print("Age is $age");
  print("Dream company is $cmp");
  
}

// Explanation - Here we take input from user print its details.