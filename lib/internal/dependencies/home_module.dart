import 'package:flutter_clean_architecture/domain/state/home/home_state.dart';
import 'package:flutter_clean_architecture/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      RepositoryModule.dayRepository(),
    );
  }
}
