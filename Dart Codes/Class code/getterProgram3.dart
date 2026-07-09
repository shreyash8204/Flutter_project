
class Demo{
  int? _x = 20;
  String? _str = "Core2Web";

  int? get x => _x;
  String? get str => _str;   // This Arrow Operator is used when we have to write only one statement method this not for multiple statement.  
}

/*
for example :-

class Demo{
    int? _x = 10;
    String _str = "C2W";

    int? get x {
      print("In Getter x");
      return _x;
    }

    String? get str => _str;
}
    

 */