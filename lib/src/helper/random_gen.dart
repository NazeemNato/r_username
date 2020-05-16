import 'dart:math';

final random = RandomHelper();

class RandomHelper {
  
  const RandomHelper();

   RanList lst<RanList>(List<RanList> list){

    return list[Random().nextInt(list.length)];
  }

  int ranNum(i) => Random().nextInt(i);
  
}