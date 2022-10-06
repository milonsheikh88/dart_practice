
typedef MultiOperation(int firstNo , int secondNo); //typedef function signature

add(int firstNo,int second){
  print("Add result is ${firstNo+second}");
}
subtract(int firstNo,int second){
  print("Subtract result is ${firstNo-second}");
}
divide(int firstNo,int second){
  print("Divide result is ${firstNo/second}");
}

calculator(int a,int b ,MultiOperation operation){
  print("==================== Inside calculator ======================");
  operation(a,b);
}

void main(){
  MultiOperation multiOperation;

  multiOperation=add;
  multiOperation(30,20);

  multiOperation=subtract;
  multiOperation(30,20);

  multiOperation=divide;
  multiOperation(30,20);

  calculator(50,10,add);
  calculator(50,10,subtract);
  calculator(50,10,divide);
}