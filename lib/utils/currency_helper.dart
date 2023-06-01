import 'package:exchangerates/conf/enums/weekdays_enum.dart';

class MyCurrencyHelper {
  //

  static double highestValue(List<double> rates) {
    return rates.reduce((value, element) => value > element ? value : element);
  }

  static double lowestValue(List<double> rates) {
    return rates.reduce((value, element) => value < element ? value : element);
  }

  static double avgValue(List<double> rates) {
    return rates.reduce((sum, element) => sum + element) / rates.length;
  }

  static Weekday getWeekdayByIndex(int index) {
    List<Weekday> weekdays = Weekday.values;
    if (index >= 0 && index < weekdays.length) {
      return weekdays[index];
    }
    return Weekday.Sunday;
  }
}
