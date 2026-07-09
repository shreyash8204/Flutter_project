
void main(){
  List<int> numbers = [10,20,30,40];
  int searchElement = 30;

  if(numbers.contains(searchElement)){
    print("$searchElement exists in the list!");
  }else{
    print("$searchElement does not exists in the list!");
  }
  
}
