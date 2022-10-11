import 'dart:async';

/// You can create streams in a few ways:
///
/// 1. Creating a stream from scratch by using an async* function / Manual Streams.
/// 2. Creating a stream by using a StreamController.
/// 3. Transforming existing streams.

// 2. Creating a stream by using a StreamController.

void main() {

  final streamController = StreamController<int>();
  final Stream<int> stream = streamController.stream;
  late StreamSubscription<int> subscription;
  int count=0;

  Timer timer= Timer.periodic(
    Duration(seconds: 2),(timer) {
       count++;
       streamController.sink.add(count);

      if (count % 3 == 0) {
        streamController.addError('Seconds are divisible by three.');
      }

      if (count == 8) {
         streamController.sink.done;
      }

      if (count> 8) {
        streamController.sink.close();
      }
    },
  );

  subscription=stream.listen((event) {
    print('Event=====>>> $event');
  }, onError: (error) {
    print('== The stream had an error ===');
  }, onDone: () {
    print('The stream is done :)');
    timer.cancel();
    streamController.close();
    subscription.cancel();
  },cancelOnError: false);
}
