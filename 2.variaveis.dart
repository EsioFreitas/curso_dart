main() {
  //Variables

  //The type of the name variable is inferred to be String,
  //but you can change that type by specifying it
  var name = 'Bob';

  //If an object isn’t restricted to a single type,
  //specify the Object or dynamic type
  dynamic name2 = 'Bob';

  //Another option is to explicitly declare the type that would be inferred:
  String name3 = 'Bob';

  //Uninitialized variables have an initial value of null
  int lineCount;
  assert(lineCount == null);

  //Constants

  final name4 = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  //You can’t change the value of a final variable:
  //name4 = 'Alice'; // Error: a final variable can only be set once.

  //Use const for variables that you want to be compile-time constants.
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere
}
