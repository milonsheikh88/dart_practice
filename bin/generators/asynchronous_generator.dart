// async* function(s) return an stream

// sync* functions return an iterable
Stream<int> evenNo(int num) async* {
  int x = num;
  while (x >= 0) {
    // Check for even number
    if (x % 2 == 0) {
      yield x;
    }
    // Decrease variable x
    x--;
    await Future.delayed(Duration(milliseconds: 200));
  }
}

Stream<int> genIterates(int max) async* {
  var i = 1;
  while (i <= max) {
    yield i;
    i++;
    await Future.delayed(Duration(milliseconds: 200));
  }
}

Stream<int> countDownFrom(int n) async* {
  if (n > 0) {
    yield n;
    await Future.delayed(Duration(milliseconds: 200));
    yield* countDownFrom(n - 1);
  }
}

// Main Function
void main() {

  // Print even numbers
  // evenNo(20).forEach((item) {
  //   print(item);
  // });

  // print("----------------------------");
  // genIterates(20).forEach((v) => print(v));

  print("----------------------------");
  countDownFrom(20).forEach(print);

}
