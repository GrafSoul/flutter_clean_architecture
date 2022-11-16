import 'package:flutter_clean_architecture/data/api/model/api_day.dart';
import 'package:flutter_clean_architecture/domain/model/day.dart';

class DayMapper {
  static Day fromApi(ApiDay day) {
    return Day(
      sunrise: DateTime.tryParse(day.sunrise) as DateTime,
      sunset: DateTime.tryParse(day.sunset) as DateTime,
      solarNoon: DateTime.tryParse(day.solarNoon) as DateTime,
      dayLength: day.dayLength.toInt(),
    );
  }
}
