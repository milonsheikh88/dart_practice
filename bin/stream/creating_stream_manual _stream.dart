/// You can create streams in a few ways:
///
/// 1. Creating a stream from scratch by using an async* function / Manual Streams.
/// 2. Creating a stream by using a StreamController.
/// 3. Transforming existing streams.

// 1. Creating a stream from scratch by using an async* function / Manual Streams.

Stream<int> evenNo(int num) async* {
  int x = num;
  while (x >= 0) {
    if (x % 2 == 0) {
      yield x;
    }
    x--;
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

void main() {

  evenNo(20).forEach((item) {
    print(item);
  });

  // print("----------------------------");
  // countDownFrom(20).forEach((v) => print(v));

}