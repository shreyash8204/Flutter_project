import "dart:async";

Future<String?> func() async {
 await Future.delayed(Duration(seconds: 3));
 print("End func");
 return "In func Method";
}

void fun(){
  print("In fun Method");
}

Future<void> main() async{
  print("Start Main");
  String? data = await func();
  print(data);
  fun();
  print("End main");
}