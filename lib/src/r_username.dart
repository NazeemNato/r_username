import 'package:r_username/src/data/adjective/adjectives.dart';
import 'package:r_username/src/data/noun/nouns.dart';
import 'package:r_username/src/data/any/any.dart';
import 'package:r_username/src/helper/random_gen.dart';

class Username {
  const Username();
  userName(
      {String firstName,
      String lastName,
      String fullName,
      bool separator = false}) {
    if (firstName != null && lastName != null) {
      firstName = firstName.toLowerCase();
      lastName = lastName.toLowerCase();
      // Generates a username with first & last name
      ///
      /// Example 2
      /// ```dart
      ///    uname.userName(firstName: 'Jack',lastName: 'Daniel');
      /// ```
      switch (random.ranNum(13)) {
        case 1:
          return '$firstName\_$lastName';

        case 2:
          return '$firstName\.$lastName';
        case 3:
          return '${random.lst(adjectives)}\_$lastName';

        case 4:
          return '${random.lst(nouns)}\_$firstName';

        case 5:
          return '${random.lst(adjectives)}\.$lastName';

        case 6:
          return '${random.lst(nouns)}\.$firstName';

        case 7:
          return '${random.lst(nouns)}$firstName';

        case 8:
          return '${random.lst(nouns)}$lastName';

        case 9:
          return '${random.lst(adjectives)}$firstName';

        case 10:
          return '$firstName${random.lst(adjectives)}';

        case 11:
          return '$lastName${random.lst(nouns)}';

        default:
          return '$firstName$lastName';
      }
    }

    /// Generate username with full name using seperator
    ///
    /// Example 1
    /// ```dart
    ///   uname.userName(fullName: 'Jack Daniel',separator: true);
    ///```
    if (firstName == null && lastName == null && fullName != null) {
      bool cap = random.lst([true, false]);

      cap ? fullName = fullName.toLowerCase() : fullName = fullName;

      separator
          ? fullName = fullName.replaceAll(" ", "_")
          : fullName = fullName.replaceAll(" ", "");

      /// Generate username without seperator
      ///
      /// Example 1
      /// ```dart
      ///   uname.userName(fullName: 'Jack Daniel');
      ///```
      return fullName;
    }

    /// Generates a Random username.
    ///
    /// Example 1
    /// ```dart
    ///   uname.userName();
    /// ```
    switch (random.ranNum(10)) {
      case 0:
        return '${random.lst(adjectives).toLowerCase()}${random.lst(nouns).toLowerCase()}';

      case 1:
        return '${random.lst(nouns).toLowerCase()}${random.lst(adjectives).toLowerCase()}';

      case 2:
        return '${random.lst(adjectives).toLowerCase()}${random.lst(adjectives).toLowerCase()}';

      case 3:
        return '${random.lst(nouns).toLowerCase()}${random.lst(nouns).toLowerCase()}';

      case 4:
        return '${random.lst(nouns).toLowerCase()}.${random.lst(adjectives).toLowerCase()}__';

      default:
        return '${random.lst(any).toLowerCase()}';
    }
  }
}
