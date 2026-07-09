import 'dart:io';

void main(){
  List<int> mList = [10,20,30,40,50,60];

  print("Enter the index : ");
  int index = int.parse(stdin.readLineSync()!);

  if(mList.length > index){
    mList.removeAt(index);
    print(mList);
  }else{
    print("Index is out of Range");
  }
  
}