void main(){
  List<int> l1 = [1, 2, 3];
  List<int> result = [0,4, ...l1];
  print(result);


  List<int> l2 = [1, 2, 3];
  List<int> l3 = [4, 5];
  List<int> result1 = [...l2, ...l3];
  print(result1);

}