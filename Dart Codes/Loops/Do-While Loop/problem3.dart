import 'dart:io';

void main(){
  int choice;
  String continueUser;

  do{
    print("1.MS Dhoni");
    print("2.Rohit Sharma");
    print("3.Virat Kohli");
    print("4.Shikhar Dhawan");

    print("Enter Your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1 :
              print("Name = MS Dhoni");
              print("Jersey No = 7");
              print("Total Runs = 17,266");

      case 2 :
              print("Name = Rohit Sharma");
              print("Jersey No = 45");
              print("Total Runs = 20,004");

      case 3 : 
              print("Name = Virat Kohli");
              print("Jersey No = 18");
              print("Total Runs = 27,609");

      case 4 :
              print("Name = Shikhar Dhawan");
              print("Jersey No = 42");
              print("total Runs = 10,867");
  
      default :
              print("Enter Valid Choice!!!");
    }
      print("Do you want to see another player? : (y/n)");
      continueUser = stdin.readLineSync()!;

  }while(continueUser == 'y');
}

