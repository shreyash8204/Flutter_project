void main()
{
  String str;
  int x = 10;
  double y = 20;
  
  str = "my age is ${x+y}"; 
  print(str);
}

/* 
Explanation - 
              we can't directly pass int and double value to String.
              WE have do String Interpolation for passing int and double value to String.

*/