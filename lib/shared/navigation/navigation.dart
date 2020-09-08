import 'package:flutter/material.dart';

import 'side_transaition.dart';

class Navigation {
  static void sideNavigation(BuildContext context, Widget child) {
    Navigator.of(context).push(SlideTransitionPage(
      child: child,
    ));
  }
}
