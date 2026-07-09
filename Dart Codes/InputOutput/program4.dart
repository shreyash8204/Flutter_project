import "dart:io";

void main()
{
  print("Enter a Radius : ");
  int rad = int.parse(stdin.readLineSync()!);

  double area = 3.14 * rad * rad;
  print("Area of circle is : $area");
}

// Explanation - we Take radius as input from user and print Area of Circle using formula.