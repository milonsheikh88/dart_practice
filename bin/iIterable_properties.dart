void main() {
  final List<String> listOfCar = ["Audi", "BMW", "Ferrari", "Mercedes"];
  final Map<String, dynamic> mapOfNumbers = {"0": "Zero", "1": "One", "2": "Two", "3": "Three"};

  //first property.....
  print('First Value of List ===> ${listOfCar.first}');
  print('First Key of Map ===> ${mapOfNumbers.keys.first}');
  print('First Value of Map ===> ${mapOfNumbers.values.first}');

  //last property.....
  print('Last Value of List ===> ${listOfCar.last}');
  print('Last Key of Map ===> ${mapOfNumbers.keys.last}');
  print('Last Value of Map ===> ${mapOfNumbers.values.last}');

  //runtimeType property
  print('runtimeType of List ===> ${listOfCar.runtimeType}');
  print('runtimeTypeof Map ===> ${mapOfNumbers.runtimeType}');

}
