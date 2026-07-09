import 'dart:io';

void main()
{
  print("Enter Electricity bill : ");
  int bill = int.parse(stdin.readLineSync()!);

  if(bill <= 90)
  {
    print(bill * 0);
    print("No Electricity charge");
  }
  else if(bill > 90 && bill <= 180)
  {
    print("6 rupees per unit charge");
    print(bill * 6);
  }
  else if(bill > 180 && bill <= 250)
  {
    print("10 rupees per unit charge");
    print(bill * 10);
  }
  else if(bill > 250)
  {
    print("15 rupees per unit charge");
    print(bill * 15);
  }
}