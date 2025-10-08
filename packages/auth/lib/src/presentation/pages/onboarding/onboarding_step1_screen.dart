import 'package:auth/src/presentation/generated/assets.gen.dart';
import 'package:auth/src/presentation/widgets/bottom_fade_blur.dart';
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

  Widget _buildIndicator({
    int numberOfPages = 0,
    Color? dotColor,
    Color? activeColor,
  }) {
    return SmoothPageIndicator(
      controller: state.pageController,
      count: numberOfPages,
      effect: ExpandingDotsEffect(
        dotColor: dotColor ?? AppColors.white.withValues(alpha: 0.6),
        activeDotColor: activeColor ?? AppColors.white,
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

  Widget _buildOnboardingStep2(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        BottomFadeBlur(
          image: Assets.images.onboarding1Illustration1.image(package: 'auth'),
          subImageLeft: Assets.images.onboarding1Illustration2.image(
            package: 'auth',
          ),
          subImageRight: Assets.images.onboarding1Illustration3.image(
            package: 'auth',
          ),
        ),
        Text(
          AppTranslate.current.onboarding2Title,
          style: AppTextStyles.h1(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        AppSize.s16.toHGap,
        Text(
          AppTranslate.current.onboarding2Subtitle,
          style: AppTextStyles.body(color: AppColors.textSecondary),
          textAlign: TextAlign.center,
        ),
        AppSize.s36.toHGap,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        isShowBackIcon: false,
        onAction: TextButton(
          onPressed: () {
            LogInfo.log('OK');
          },
          child: Text(
            AppTranslate.current.skip,
            style: AppTextStyles.body(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: AppSize.s10.paddingHorizontal.copyWith(bottom: AppSize.s8),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildOnboardingStep2(context),
                  _buildIndicator(
                    numberOfPages: 3,
                    dotColor: AppColors.primary.withValues(alpha: 0.5),
                    activeColor: AppColors.primary,
                  ),
                  AppSize.s86.toHGap,
                  AppButton(
                    title: AppTranslate.current.Continue,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
