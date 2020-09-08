import 'package:flutter/material.dart';

class SlideTransitionPage extends PageRouteBuilder {
  final Widget child;
  SlideTransitionPage({this.child})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return child;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              transformHitTests: false,
              position:
                  Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                      .chain(CurveTween(curve: Curves.ease))
                      .animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(-1.0, 0.0),
                )
                    .chain(CurveTween(curve: Curves.ease))
                    .animate(secondaryAnimation),
                child: child,
              ),
            );
          },
        );
}
