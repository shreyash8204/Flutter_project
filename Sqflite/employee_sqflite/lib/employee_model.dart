class EmployeeModel {
  String empName;
  int empId;
  String devType;
  double empSal;

  EmployeeModel({
    required this.empName,
    required this.empId,
    required this.devType,
    required this.empSal,
  });

  Map<String, dynamic> empMap() {
    return{
      'empName': empName,
      'empID': empId,
      'devType':devType,
      'empSal': empSal,
    };
  }
}