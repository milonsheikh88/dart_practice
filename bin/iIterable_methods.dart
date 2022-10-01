void main() {
  final List<String> listOfCar = ["Audi", "BMW", "Ferrari", "Mercedes"];
  final Map<String, dynamic> mapOfNumbers = {"0": "Zero", "1": "One", "2": "Two", "3": "Three"};

  //any method.....
  print('any method in List===> ${listOfCar.any((element) => element.contains('Ferrari'))}');
  print('any method in Map ===> ${mapOfNumbers.values.any((element) => element.contains('Two'))}');

  //elementAt method.....
  print('elementAt method in List===> ${listOfCar.elementAt(2)}');
  print('elementAt method in Map ===> ${mapOfNumbers.values.elementAt(2)}');

  //every method.....
  print('every method in List===> ${listOfCar.every((element) => element.startsWith('A'))}');
  print('every method in Map ===>${mapOfNumbers.values.every((element) => element.startsWith('O'))}');

  //expand method.....
  // Creating lists
  List basket1 = ['Mango', 'Apple'];
  List basket2 = ['Orange', 'Avocado', 'Grape'];
  List basket3 = ['Lemon'];

  // converting the lists to an iterable
  var newBasketIterable = [basket1, basket2, basket3].expand((x) => x);
  // combining the lists
  var newBasket = newBasketIterable.toList();

  // printing the iterable
  print("Iterable:  $newBasketIterable");
  // printing the combined list
  print("Combined List:  $newBasket");

  // duplicating elements in a list
  var duplicated = basket1.expand((i) => [i, i]).toList();
  print('duplicating elements $duplicated');

  //firstWhere method.....
  print(listOfCar.firstWhere((element) => element.startsWith("BM"), orElse: () => "No Element Found"));

  // fold method.....
  final myList = [1, 3, 5, 8, 7, 2, 11];

  //Calculating the sum of a list
  final sumResult = myList.fold<int>(0, (sum, element) => sum + element);
  print('sum of a list:  $sumResult');

  //Finding the biggest number in a list
  final maxResult = myList.fold<int>(myList.first, (max, element) {
    if (max < element) {
      max = element;
    }
    return max;
  });

  print('Max value of a list:  $maxResult');

  //followedBy method.....
  final List<String> listOfFruits = ["Apple", "Banana", "Carrot"];
  final newFruitList = listOfFruits.followedBy(["Dates", "Emu"]);
  print(newFruitList.toList());

  //join method.....
  final List<int> listNumber = [1, 2, 3, 4];
  final filteredElement = listNumber.join(",");
  print('Join each element as a String $filteredElement');

  //map method.....
  var newIntList = listNumber.map((element) => element * 2);
  print('Create ne iterator ==>>  ${newIntList.toList()}');

  var newStrList = listOfFruits.map((name) => name.length);
  print('Create ne iterator ==>>  ${newStrList}');

  // reduce method.....
  final myList1 = [1, 3, 5, 8, 7, 2, 11];

  //Calculating the sum of a list
  final sumResult1 = myList1.reduce((sum, element) => sum + element);
  print('sum of a list:  $sumResult1');

  // singleWhere method.....
  final List<String> listOfCar1 = ["Audi","BMW","Ferrari","Mercedes"];
  final fileteredList = listOfCar1.singleWhere((element) => element.startsWith("Fe"), orElse: () => "No Element Found");

  print(fileteredList);

  //skip method ....
  print(listOfCar1.skip(3));


  //skipWhile method ....
  final List<String> listOfCar4 = ["Audi","Ferrari","BMW","Mercedes"];
  final filteredList2 =  listOfCar4.skipWhile((element) => element.endsWith("i"));
  final filteredList3 =  listOfCar4.skipWhile((element)  => element.endsWith("i"));
  print(filteredList2);
  print(filteredList3);

  //take method .....
  final filteredListTake =  listOfCar.take(3);
  print(filteredListTake);

  //takeWhile method .....

  final List<String> listOfCar5 = ["Audi","Audi A2","BMW","Ferrari","Mercedes","Audi A3"];
  final fileteredList5 =  listOfCar5.takeWhile((element) => element.startsWith("Au"));
  print(fileteredList5);

  //where method ....
  print('Where ===>>> ${listOfCar.where((element)=> element.length > 4)}');

//whereType method....
  var mixList = [1, "a", 2, "b", 3, "c", 4, "d"];
  var num = mixList.whereType<int>();
  print('WhereType ===>>> ${num}');

}
