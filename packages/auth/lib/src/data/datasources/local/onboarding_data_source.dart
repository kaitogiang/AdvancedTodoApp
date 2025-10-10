import 'package:core/core.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class OnboardingDataSource {
  final LocalStorageRepository _localStorageRepository;

  OnboardingDataSource(this._localStorageRepository);

  Future<void> saveSkipOnboarding() async {
    await _localStorageRepository.saveKey(key: 'skipOnboarding', value: true);
  }

  Future<bool> getSkippedOnboarding() async {
    return await _localStorageRepository.readKey('skipOnboarding');
  }
}
