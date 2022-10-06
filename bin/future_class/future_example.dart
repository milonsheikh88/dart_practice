/** There are two ways to get the value after the future completes:*/
/**
 *   1. Using a callback
 *   2. Using async and await keywords
 */

/** There are 2 ways to handle Futures*/
/**
 *  1. Using the Future API
 *  2. Using the async and await operations
 */

Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
}

Future<void> main() async {

/** create a Future: */

  /// Dart/Flutter Future delayed
  Future.delayed(Duration(seconds: 2), () => 'Delayed 2 seconds.')
      .then((result) => print(result));

 /// Dart/Flutter Future value
  Future.value("Hello world...")
      .then((result) => print(result));

  /// Dart/Flutter Future error
  Future.error('This is an error message!')
      .catchError((err) => print(err));

  /** o get the value after the future completes: */

  ///Using callbacks or Future API
  /**
   * If a future completes successfully with a value, you can get the result by adding a callback to the then() method.
   *
   * If a future fails with an error, you can handle the error in the catchError() method.
   *
   *  Whether a future completes with a value or an error, you can schedule a callback in the whenComplete() method.
   */

  Future<String> future = fetchUserOrder();
  print('Fetching Data ...');
  future.then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  }).whenComplete(() {
    print('Either of then or catchError has run at this point');
  });
  print('--- Done ---');

  ///Using async and await keywords
  try {
    String data = await fetchUserOrder();
    print('Using async and await keywords: $data');
  } catch (error) {
    print('Using async and await keywords: $error');
  }

}
