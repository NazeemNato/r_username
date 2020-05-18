import 'dart:math';

final random = RandomHelper();

class RandomHelper {
  const RandomHelper();

  /// Plucks a random element from the given [list].
  RanList lst<RanList>(List<RanList> list) {
    return list[Random().nextInt(list.length)];
  }

  /// Generate random number
  ///
  /// Example 1
  /// ```dart
  ///   random.ranNum(4);
  /// ```
  int ranNum(i) => Random().nextInt(i);
}
