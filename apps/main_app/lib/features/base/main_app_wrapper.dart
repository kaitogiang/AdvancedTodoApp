import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:main_app/features/base/auto_hide_keyboard.dart';

class MainAppWrapper extends StatefulWidget {
  final Widget child;
  final ValueNotifier<bool>? overlayLoadingNotifier;

  const MainAppWrapper({
    super.key,
    required this.child,
    this.overlayLoadingNotifier,
  });

  @override
  State<MainAppWrapper> createState() => _MainAppWrapperState();
}

class _MainAppWrapperState extends State<MainAppWrapper> {
  DateTime? duration;
  StreamSubscription? _keyboardSubscription;
  late final ValueNotifier<bool>? _overlayLoadingNotifier;

  @override
  void initState() {
    super.initState();

    _overlayLoadingNotifier = widget.overlayLoadingNotifier;

    // Lắng nghe overlay loading nếu có
    _overlayLoadingNotifier?.addListener(() {
      final show = _overlayLoadingNotifier!.value;
      if (show) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // Lắng nghe sự kiện unfocus keyboard
    // _keyboardSubscription = AppEventBus().stream<UnfocusKeyboardEvent>().listen(
    //       (event) {
    //     if (!mounted) return;
    //     print("Keyboard unfocus");
    //     FocusScope.of(context).unfocus();
    //   },
    // );
  }

  @override
  void dispose() {
    _keyboardSubscription?.cancel();
    _overlayLoadingNotifier?.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        final now = DateTime.now();
        if (duration != null &&
            now.difference(duration!).abs().inMilliseconds <= 500) {
          // await NativeMethod.hideAppToBackground();
          duration = null;
          return;
        }
        duration = now;
        print('Wait for the next tap');
      },
      child: LoaderOverlay(
        overlayWidgetBuilder: (progress) =>
            Center(child: CircularProgressIndicator(color: Color(0xFF24A19C))),
        child: AutoHideKeyboard(child: widget.child),
      ),
    );
  }
}
