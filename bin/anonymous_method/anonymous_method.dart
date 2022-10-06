
// named function
void pressThreeDBuddy() =>print('Pressing a 3D Buddy.');

// anonymous function
Function anonymous= () {
print('Pressing anonymously.');
};

// single line
Function sum = (a, b) => a + b;

// multi-line
Function sumMultiLine = (a, b) {
  return a + b;
};

void main() {

  // calling a function
  pressThreeDBuddy();

  // calling an anonymous function
  anonymous();

 int result= sum(1,4);
 print('Result ====>>> $result');
 result=sumMultiLine(10,20);
 print('Result ====>>> $result');

}