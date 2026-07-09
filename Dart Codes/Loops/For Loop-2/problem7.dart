
void main(){
  int count = 0;
  List<int> numbers = [45,67,23,89,55,34];

  for(int i = 0; i < numbers.length; i++){
    if(numbers[i] > 50){
      count++;
    }
  }
  print("Count of Numbers > 50 : $count");
}