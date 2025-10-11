import 'package:auth/src/domain/repositories/onboarding_repository.dart';
import 'package:core/core.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SaveSkipOnboarding
    extends UseCaseBase<SaveSkipOnboardingOutput, SaveSkipOnboardingInput> {
  final OnboardingRepository _repository;

  SaveSkipOnboarding(this._repository);

  @override
  Future<SaveSkipOnboardingOutput> call(SaveSkipOnboardingInput params) async {
    try {
      await _repository.saveSkipOnboarding();
      return SaveSkipOnboardingOutput(true);
    } catch (e) {
      LogError.log(e.toString());
      return SaveSkipOnboardingOutput(false);
    }
  }
}

class SaveSkipOnboardingInput {}

class SaveSkipOnboardingOutput {
  final bool isSuccess;

  const SaveSkipOnboardingOutput(this.isSuccess);
}
