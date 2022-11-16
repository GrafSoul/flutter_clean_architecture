import 'package:flutter_clean_architecture/data/api/api_util.dart';
import 'package:flutter_clean_architecture/data/repository/day_data_repository.dart';
import 'package:flutter_clean_architecture/domain/repository/day_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  static DayRepository? _dayRepository;

  static DayRepository? dayRepository() {
    _dayRepository = DayDataRepository(
      ApiModule.apiUtil() as ApiUtil,
    );
    return _dayRepository;
  }
}
