abstract class OnboardingRepository {
  Future<void> saveSkipOnboarding();

  Future<bool> hasSkippedOnboarding();
}
