import 'package:auth/src/presentation/generated/assets.gen.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//The class for receiving external params
class OnboardingStep1Screen extends StatefulWidget {
  const OnboardingStep1Screen({super.key});

  @override
  State<OnboardingStep1Screen> createState() => _OnboardingController();
}

//Separated Controller
class _OnboardingController extends State<OnboardingStep1Screen> {
  final pageController = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return _OnboardingView(this);
  }
}

/// This part is a separated UI
class _OnboardingView
    extends WidgetView<OnboardingStep1Screen, _OnboardingController> {
  const _OnboardingView(super.state, {super.key});

  Widget _buildIndicator({int numberOfPages = 0}) {
    return SmoothPageIndicator(
      controller: state.pageController,
      count: numberOfPages,
      effect: ExpandingDotsEffect(
        dotColor: AppColors.white.withValues(alpha: 0.6),
        activeDotColor: AppColors.white,
        dotHeight: AppSize.s8,
        dotWidth: AppSize.s8,
      ),
    );
  }

  Widget _buildOnBoardingStep1() {
    return Padding(
      padding: AppSize.s100.paddingBottom,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Assets.icons.todoLogo.svg(package: 'auth'),
          Text(
            AppTranslate.current.appName,
            style: AppTextStyles.h1(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          Text(
            AppTranslate.current.onboarding1Subtitle,
            style: AppTextStyles.body(color: AppColors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingStep2() {
    return Padding(
      padding: AppSize.s10.paddingHorizontal.copyWith(bottom: AppSize.s8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.onboarding1Illustration1.image(package: 'auth'),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 200,
                    height: 90,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.white,
                          spreadRadius: 50,
                          blurRadius: 50,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: AppSize.s75,
                  child: Assets.images.onboarding1Illustration2.image(
                    package: 'auth',
                  ),
                ),
                Positioned(
                  right: 0,
                  top: AppSize.s10,
                  child: Assets.images.onboarding1Illustration3.image(
                    package: 'auth',
                  ),
                ),
              ],
            ),
          ),
          Text(
            AppTranslate.current.onboarding2Title,
            style: AppTextStyles.h1(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            AppTranslate.current.onboarding2Subtitle,
            style: AppTextStyles.body(color: AppColors.textSecondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildOnboardingStep2(),
              _buildIndicator(numberOfPages: 3),
            ],
          ),
        ),
      ),
    );
  }
}
