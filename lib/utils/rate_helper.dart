import 'dart:math';

class MyRateHelper {
  //
  static List<double> getRandomValues(List<double> array, int count) {
    Random random = Random();
    List<double> randomValues = [];

    while (randomValues.length < count) {
      int randomIndex = random.nextInt(array.length);
      double randomValue = array[randomIndex];

      if (!randomValues.contains(randomValue)) {
        randomValues.add(randomValue);
      }
    }

    return randomValues;
  }

  static List<double> generateRandomValues() {
    Random random = Random();
    List<double> randomValues =
        List.generate(5, (_) => random.nextDouble() * 9 + 1);
    return randomValues;
  }
}
