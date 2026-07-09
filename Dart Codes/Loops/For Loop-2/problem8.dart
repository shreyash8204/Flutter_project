
void main(){
  List<int> numbers = [10,20,30,40];
  int sum = 0;
  for(int i = 0; i < numbers.length; i++){
    sum+=numbers[i];
  }
  double avg = sum / numbers.length;

  print("Average : $avg");
    
}