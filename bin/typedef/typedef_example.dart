
typedef MultiOperation(int firstNo , int secondNo); //typedef function signature

Add(int firstNo,int second){
  print("Add result is ${firstNo+second}");
}
Subtract(int firstNo,int second){
  print("Subtract result is ${firstNo-second}");
}
Divide(int firstNo,int second){
  print("Divide result is ${firstNo/second}");
}

Calculator(int a,int b ,MultiOperation operation){
  print("==================== Inside calculator ======================");
  operation(a,b);
}

void main(){
  MultiOperation multiOperation;

  multiOperation=Add;
  multiOperation(30,20);

  multiOperation=Subtract;
  multiOperation(30,20);

  multiOperation=Divide;
  multiOperation(30,20);

  Calculator(50,10,Add);
  Calculator(50,10,Subtract);
  Calculator(50,10,Divide);
}