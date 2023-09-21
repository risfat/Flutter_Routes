import 'package:flutter/animation.dart';

enum TransitionName {
  slideUp,
  slideDown,
  slideLeft,
  slideRight,
}
Offset getOffsetByTransitionName(TransitionName transitionName) {
  switch (transitionName.name) {
    case 'slideUp':
      return const Offset(0, -1);
    case 'slideDown':
      return const Offset(0, 1);
    case 'slideLeft':
      return const Offset(-1, 0);
    case 'slideRight':
      return const Offset(1, 0);
    default:
      return Offset.zero; // Default offset (no transition)
  }
}
