import 'dart:io';

void main(){
  List<Map<String, dynamic>> Emp_info = [];
  
  print("How many Employee you want to add : ");
  int count = int.parse(stdin.readLineSync()!);
  
  for(int i = 0; i < count; i++){
    print("Enter the Employee id : ");
    int emp_id = int.parse(stdin.readLineSync()!);

    print("Enter the Employee Name : ");
    String emp_name = stdin.readLineSync()!;

    print("Enter the Employee Age : ");
    int emp_age = int.parse(stdin.readLineSync()!);

    print("Enter the Employee Salary : ");
    double emp_sal = double.parse(stdin.readLineSync()!);

  Map<String, dynamic> emp = {
    "id" : emp_id,
    "name" : emp_name,
    "age" : emp_age,
    "salary" : emp_sal
    };

    Emp_info.add(emp);
  }
print(Emp_info);
print(" ");
print("Employee age greater than 25");
for(var emp in Emp_info){
  if(emp['age'] > 25){
  print(emp['name']);
  }
}

print("Enter Employee name to Search : ");
String searchName = stdin.readLineSync()!;
int flag = 0;

for(var emp in Emp_info){
  if(emp['name'] == searchName){
    print("Employee Found : $emp");
    flag = 1;
    break;
  }

  if(flag == 0){
    print("Employee is not found");
  }
}
}
  
  



