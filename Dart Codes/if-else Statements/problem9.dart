import 'dart:io';

void main()
{
  print("Enter the Stand number : ");
  int num = int.parse(stdin.readLineSync()!);

  if(num == 1)
  {
  print("Please pay 2000 ruppes(Upper stand)");
  }
  else if(num == 2)
  {
    print("Please pay 3000 rupees(Middle stand)");
  }
  else if(num == 3)
  {
    print("Please pay 7000 rupees(Lower Stand)");
  }
  else 
  {
    print("Please pay 2500 rupess");
  }
}