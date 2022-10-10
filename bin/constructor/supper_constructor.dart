
//1. Implicit super:
// When creating a subclass constructor,
// if you don't explicitly call a superclass constructor with super keyword,
// then Dart will insert an implicit call to the no-arg "default" superclass constructor

class Base {
  Base() {
    print("Base Constructor");
  }
}

class Derived extends Base {
  Derived() {
    print("Derived Constructor");
  }
}

// If the Base class constructor consists of parameters then
// we require to call super constructor with args in to invoke Base class constructor in the derived class explicitly.


class Base1 {
  Base1(String mgs) {
    print("Base 1 Constructor $mgs");
  }
}

class Derived1 extends Base1 {
  Derived1():super('Message') {
    print("Derived 1 Constructor");
  }
}

void main() {
  var object = Derived();
  var object1 = Derived1();
}
