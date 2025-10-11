import 'package:auth/src/domain/repositories/onboarding_repository.dart';
import 'package:core/core.dart';

class GetSkipOnboarding
    extends UseCaseBase<GetSkipOnboardingOutput, GetSkipOnboardingInput> {
  final OnboardingRepository _repository;

  GetSkipOnboarding(this._repository);

  @override
  Future<GetSkipOnboardingOutput> call(GetSkipOnboardingInput params) async {
    try {
      final isSkip = await _repository.hasSkippedOnboarding();
      return GetSkipOnboardingOutput(isSkip);
    } catch (e) {
      LogError.log(e.toString());
      return GetSkipOnboardingOutput(false);
    }
  }
}

class GetSkipOnboardingInput {}

class GetSkipOnboardingOutput {
  final bool isSkip;

  const GetSkipOnboardingOutput([this.isSkip = false]);
}
