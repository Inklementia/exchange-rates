// Project imports:
import 'package:exchangerates/conf/values/strings_constants.dart';

enum Weekday {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
}

extension WeekdayExtension on Weekday {
  //

  String get title {
    switch (this) {
      case Weekday.Monday:
        return MyStrings.monday;

      case Weekday.Tuesday:
        return MyStrings.tuesday;

      case Weekday.Wednesday:
        return MyStrings.wednesday;

      case Weekday.Thursday:
        return MyStrings.thursday;

      case Weekday.Friday:
        return MyStrings.friday;

      case Weekday.Saturday:
        return MyStrings.saturday;

      default:
        return MyStrings.sunday;
    }
  }

  String get code {
    switch (this) {
      case Weekday.Monday:
        return 'M';

      case Weekday.Tuesday:
        return 'T';

      case Weekday.Wednesday:
        return 'W';

      case Weekday.Thursday:
        return 'T';

      case Weekday.Friday:
        return 'F';

      case Weekday.Saturday:
        return 'S';

      default:
        return 'S';
    }
  }
}
