class Parent{
  
  int? x = 10;

  Parent():super(){
    //this.x = 10;
    print("In Parents Constructor");
  }
  void call(){
    print("In Parents Call");
    print(x);
  }
}

class Child extends Parent{
  
  int?y = 20;

  Child():super(){  // This super keyword used to call parents constructor

    super();   // This super used to call parents call Method
    //this.y = 20;     // this.y is by defult in constructor. this carries the address of the obj so when class obj is created this create a space
    print("Child Constructor");    // for instance variable on the obj which created on the heap.
  }
  void call(){
    print("In childs call");
    print(y);
  }
}

void main(){
  Child obj = Child();
  //child(1000);      // This 1000 is imaginary address or id of obj which is created on the heap.
  obj();      // This callable obj is used to call childs call method.
}

  
/* In dart when super keyword is wriiten along side of constructor then it is used to call parents constructor
   But when super is written into the block child constructor then it is used to call parents call method

   super keyword is bydefault in constructor of class we dont need to write the super keyword in constructor 
   but to call parents call method super keyword must written in the constructor. without super we cannot call the parents cal method when we created only childs obj.
*/