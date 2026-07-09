
void main(){
  int sum = 0;
  int add = 0;
  for(int i = 1; i <= 10; i++){
    if(i % 2 == 0){
        sum+=i;
    }else if(i % 2 != 0){
        add+=i;
    }
  }
    print("Sum of Even numbers = $sum");
    print("Sum of Odd numbers = $add");
    
}