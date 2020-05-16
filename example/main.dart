import 'package:r_username/r_username.dart';

void main() {
   Username uname = Username();
   print(uname.userName());
   print(uname.userName(firstName: 'Jack',lastName: 'Daniel'));
   print(uname.userName(fullName: 'Jack Daniel',separator: true));
   print(uname.userName(fullName: 'Jack Daniel'));
}
