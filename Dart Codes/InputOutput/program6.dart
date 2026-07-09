import 'dart:io';

void main()
{
  print("Enter a Number : ");
  int number = int.parse(stdin.readLineSync()!);

  String result = number > 0 ?'The number is Positive.' : (number < 0 ? 'The number is Negative.' : 'The number is Zero.');
  print(result);
}

// Explanation - Here we check whether given number is positive, negative or zero. we use ternary operator instead of if-else statement
//               In this program we get to know about how to use ternary operator. 