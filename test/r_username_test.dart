import 'package:flutter_test/flutter_test.dart';
import 'package:r_username/r_username.dart';

void main() {
  test('adds one to input values', () {
   Username uname = Username();
   print(uname.userName());
  //  print(uname.userName());
  //  print(uname.userName());
  //  print(uname.userName());
  //  print(uname.userName(firstName: 'Muhammed',lastName: 'Nazeem'));
   print(uname.userName(firstName: 'Jack',lastName: 'Daniel'));
   print(uname.userName(fullName: 'Jack Daniel',separator: true));
   print(uname.userName(fullName: 'Jack Daniel'));
  });
}
