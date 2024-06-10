import 'dart:io';

void main()
{
  var p=myclass();
  p.printname(2);
  //add function calling
 print(p.add(200,300));
 //creating list
  var name=['noor','areeba','emma'];
  name.insert(2,'100');
  print("$name");
   print('${name.length}');
   print('${name.reversed}');


}
class myclass{
  myclass(){
    print("welcome to new flutter developer");
  }


  void printname(int n)
  {
    print(n);
  }
  int add(int num1,int num2){
    int sum=num1+num2;
    return sum;

  }


}
