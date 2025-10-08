import 'package:auth/src/presentation/generated/assets.gen.dart';
import 'package:auth/src/presentation/widgets/bottom_fade_blur.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//The class for receiving external params
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key, this.onSkip});

  final VoidCallback? onSkip;

  @override
  State<OnboardingScreen> createState() => _OnboardingController();
}

//Separated Controller
class _OnboardingController extends State<OnboardingScreen> {
  final pageController = PageController(keepPage: true, initialPage: 0);
  int _currentPageIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  Color _getDotColor() {
    if (_currentPageIndex == 0) {
      return AppColors.white.withValues(alpha: 0.5);
    }
    return AppColors.primary.withValues(alpha: 0.5);
  }

  Color _getActiveDotColor() {
    if (_currentPageIndex == 0) {
      return AppColors.white;
    }

    return AppColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return _OnboardingView(this);
  }
}

/// This part is a separated UI
class _OnboardingView
    extends WidgetView<OnboardingScreen, _OnboardingController> {
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

  Widget _buildOnBoardingStep1(BuildContext context) {
    return Padding(
      padding: AppSize.s100.paddingBottom.copyWith(top: context.height * 0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          subImageLeftPosition: SubImagePosition(left: 0, bottom: AppSize.s4),
          subImageRightPosition: SubImagePosition(right: 0, top: AppSize.s2),
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

  Widget _buildOnboardingStep3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        BottomFadeBlur(
          image: Assets.images.onboarding2Illustration1.image(package: 'auth'),
          subImageLeft: Assets.images.onboarding2Illustration3.image(
            package: 'auth',
          ),
          subImageRight: Assets.images.onboarding2Illustration2.image(
            package: 'auth',
          ),
          subImageLeftPosition: SubImagePosition(left: 0, bottom: AppSize.s4),
          subImageRightPosition: SubImagePosition(right: 0, top: AppSize.s2),
        ),
        Text(
          AppTranslate.current.onboarding3Title,
          style: AppTextStyles.h1(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        AppSize.s16.toHGap,
        Text(
          AppTranslate.current.onboarding3Subtitle,
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
      backgroundColor: state._currentPageIndex == 0
          ? AppColors.primary
          : AppColors.white,
      appBar: state._currentPageIndex == 0
          ? null
          : CustomAppBar(
              isShowBackIcon: false,
              onAction: TextButton(
                onPressed: () {
                  widget.onSkip?.call();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  child: PageView(
                    controller: state.pageController,
                    onPageChanged: (index) {
                      state._updateIndex(index);
                    },
                    children: <Widget>[
                      _buildOnBoardingStep1(context),
                      _buildOnboardingStep2(),
                      _buildOnboardingStep3(),
                    ],
                  ),
                ),
                Padding(
                  padding: state._currentPageIndex == 0
                      ? 150.paddingBottom
                      : 0.paddingBottom,
                  child: _buildIndicator(
                    numberOfPages: 3,
                    dotColor: state._getDotColor(),
                    activeColor: state._getActiveDotColor(),
                  ),
                ),
                AppSize.s86.toHGap,
                Builder(
                  builder: (context) {
                    if (state._currentPageIndex == 0) {
                      return const SizedBox.shrink();
                    }
                    return AppButton(
                      title: AppTranslate.current.Continue,
                      onPressed: () {
                        LogInfo.log('Go to next step');
                        if (state._currentPageIndex == 2) {
                          LogInfo.log('Navigate to the login form');
                          widget.onSkip?.call();
                          return;
                        }
                        state.pageController.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Easing.linear,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
