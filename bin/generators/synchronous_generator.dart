// sync* functions return an iterable
Iterable evenNo(int num) sync* {
  int x = num;
  while (x >= 0) {
    // Check for even number
    if (x % 2 == 0) {
      yield x;
    }
    // Decrease variable x
    x--;
  }
}

Iterable<int> genIterates(int max) sync* {
  var i = 1;
  while (i <= max) {
    yield i;
    i++;
  }
}

Iterable<int> countDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* countDownFrom(n - 1);
  }
}

// Main Function
void main(){

  // Print even numbers
  evenNo(20).forEach((item) {
    print(item);
  });

  print("----------------------------");
  genIterates(20).forEach((v) => print(v));


  print("----------------------------");
  countDownFrom(20).forEach(print);

}

