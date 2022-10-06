
int add(int x, int y) {
  print("add");
  return x + y;
}

int sub(int x, int y) {
  print("sub");
  return x - y;
}

void main(){
  int ad = add(5,4);

  /** Lazily initializing a variable */
  late int su = add(5,4);

}