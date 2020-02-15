/*
  The Dart language has special support for the following types:
    numbers
    strings
    booleans
    lists (also known as arrays)
    sets
    maps
    runes (for expressing Unicode characters in a string)
    symbols
*/

main() {
  //Numbers

  var x = 1;
  var hex = 0xDEADBEEF;
  var y = 1.1;
  var exponents = 1.42e5;

  //Int
  //Integer values no larger than 64 bits,
  //depending on the platform. On the Dart VM, values can be from -263 to 263 - 1

  int _int = 5;

  //isEven and isOdd
  print(_int.isEven);
  print(_int.isOdd);

  //sign return 1 to positive and -1 to negative
  print(_int.sign);

  print(_int.compareTo(0));
  print(_int ~/ 5);

  //Double
  //The double type is contagious. Operations on doubles return double results.

  double _double = 2.1;

  //Returns the integer closest to this
  print(_double.round());

  //Truncates this num to an integer and returns the result as an int
  print(_double.toInt());

  //Strings

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  //You can put the value of an expression inside a string by using ${expression}.
  //If the expression is an identifier, you can skip the {}.
  //To get the string corresponding to an object,
  //Dart calls the object’s toString() method.

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  assert('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');

  //Another way to create a multi-line string:
  //use a triple quote with either single or double quotation marks:

  var s5 = '''
    You can create
    multi-line strings like this one.
  ''';

  var s6 = """This is also a
multi-line string.""";

  //Booleans
  //Only two objects have type bool: the boolean literals true and false,
  //which are both compile-time constants.

  bool aBool = true;

  //List
  //In Dart, arrays are List objects, so most people just call them lists.
  var list = [1, 2, 3];

  //To create a list that’s a compile-time constant,
  //add const before the list literal:
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // Uncommenting this causes an error.

  //Spread operator (...) and the null-aware spread operator (...?),
  //which provide a concise way to insert multiple elements into a collection.
  //spread operator (...)
  var list2 = [0, ...list];
  assert(list2.length == 4);

  //null-aware spread operator (...?):
  var list3;
  var list4 = [0, ...?list3];
  assert(list4.length == 1);

  // collection if and collection for, which you can use to build
  //collections using conditionals (if) and repetition (for).
  //collection if
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  //collection for
  var listOfInts = [1, 2, 3, 3, 6];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  print(listOfInts.toSet());

  //Sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  //To create an empty set, use {} preceded by a type argument,
  //or assign {} to a variable of type Set:

  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.

  //Maps

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts = Map();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
}
