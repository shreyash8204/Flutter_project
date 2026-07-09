import 'dart:io';

void main(){
  double balance = 0.0;
  int choice;

  do{

    print("1.Deposit Money");
    print("2.Withdraw Money");
    print("3.Check Balance");
    print("4.Exit");

    print("Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1 :
              print("Enter the Deposit Amount : ");
              double deposit = double.parse(stdin.readLineSync()!);
              if(deposit > 0){
                balance += deposit;
                print("$deposit deposited successfully!!!");
              }else{
                print("invalid deposit amount!!!");
              }

      case 2 :
              print("Enter Amount for Withdraw : ");
              double Withdraw = double.parse(stdin.readLineSync()!);
              if(Withdraw <= balance && Withdraw > 0){
                balance -= Withdraw; 
                print("$Withdraw Withdraw Successfully!!!");
              }else if(Withdraw <= 0){
                print("Invalid Withdraw amount!!!");
              }else{
                print("Insuffient Balance!!!");
              }

      case 3 :
              print("Current Balance : $balance");

      case 4 :
              print("Thank you for using Banking System!!!");
    }

    
  }while(choice != 4);
}