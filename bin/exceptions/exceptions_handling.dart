void main() {

  try {

    var result = 100 ~/ 0; // throws `IntegerDivisionByZeroException` exception
    print( 'result: $result' );

  } on IntegerDivisionByZeroException {

    // execute when exception type is: IntegerDivisionByZeroException
    print("Error: can not divide by 0.");

  } on FormatException catch( e ) {

    // execute when exception type is: FormatException
    print("Error: format is not correct, $e");

  } catch( e ) {

    // this block executes if none of the `on` block catches the exception
    print( e );

  } finally {

    print( 'Job Done!' );

  }

}
