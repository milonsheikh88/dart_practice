class Car {
  String make;
  String model;
  String yearMade;
  bool hasABS;
  /**
   * Default constructor
   */
  //Car(this.make, this.model, this.yearMade, this.hasABS);

  /**
   * Named Constructor
   */
  Car.anyName(this.make, this.model): yearMade="1995", hasABS = false;

  /**
   * factory constructor that returns a new instance
   */
  Car({required this.make, required this.model, required this.yearMade, required this.hasABS});
  factory Car.fromJson(Map json) {
    return Car(
        make : json['make'],
        model : json['model'],
        yearMade : json['yearMade'],
        hasABS : json['hasABS']
    );
  }
}


void main(){
  // create a map
  Map myCar = {'make': 'Mercedes', 'model': 'Mercedes-Benz', 'yearMade': '1995', 'hasABS': true};
  // assign to Car instance
  Car car = Car.fromJson(myCar);
  //display result
  print(car.make);
  print(car.model);
  print(car.yearMade);
  print(car.hasABS);
}