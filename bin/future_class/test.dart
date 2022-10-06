
Future<String> future1() {
  return Future.error('This is an error message!');
}

Future<String> future2() {
  return Future.delayed(const Duration(seconds: 2), () => 'Here is data.');
}

void main() async{

  String data1 = await future1();
  print(data1);

  String data2 = await future2();
  print(data2);

}