# r_username

A libary to randomly generate usernames.

## How to use ?

### Simple example:

```dart
import 'package:r_username/r_username.dart';
void main(){
Username uname = Username();

 print(uname.userName());
//employment.selective__

print(uname.userName(firstName: 'Jack',lastName: 'Daniel'));
//stereotypejack

print(uname.userName(fullName: 'Jack Daniel',separator: true));
//jack_daniel

print(uname.userName(fullName: 'Jack Daniel'));
//JackDaniel
}
```
# bugs

Please file feature requests and bugs at the issue tracker.