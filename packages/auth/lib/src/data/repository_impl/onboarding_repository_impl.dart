import 'package:auth/src/data/datasources/local/onboarding_data_source.dart';
import 'package:auth/src/domain/repositories/onboarding_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingDataSource _onboardingDataSource;

  OnboardingRepositoryImpl(this._onboardingDataSource);

  @override
  Future<bool> hasSkippedOnboarding() async {
    return await _onboardingDataSource.getSkippedOnboarding();
  }

  @override
  Future<void> saveSkipOnboarding() async {
    await _onboardingDataSource.saveSkipOnboarding();
  }
}
