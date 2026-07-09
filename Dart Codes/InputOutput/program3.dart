import "dart:io";

void main()
{
  print("Enter the Principal Amount : ");
  int P = int.parse(stdin.readLineSync()!);

  print("Enter Rate of Interest : ");
  int R = int.parse(stdin.readLineSync()!);

  print("Enter Time : ");
  int T = int.parse(stdin.readLineSync()!);

  double SI = (P * R * T) / 100;
  print("Simple Interest is : $SI");
}

// Explanation - Here we print Simple Interest of given amount using formula.