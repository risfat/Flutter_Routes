import 'package:flutter/material.dart';
import 'package:flutter_routes/routes/route_service.dart';

import '../views/home_view.dart';
import 'app_routes.dart';
import 'route_type.dart';
import 'separated/auth_routes.dart';
import 'separated/hotel_routes.dart';
import 'separated/package_routes.dart';
import 'slide_route.dart';

class Routes {
  static Map<String, RouteType> _resolveRoutes() {
    return {
      AppRoutes.home: (context, settings) => const HomeView(),
      ...authRoutes,
      ...hotelRoutes,
      ...packageRoutes,
    };
  }

  static Route onGenerateRoutes(RouteSettings settings) {
    var routes = _resolveRoutes();
    try {
      final child = routes[settings.name];

      Widget builder(BuildContext c) => child!(c, settings);

      if (settings.name == AppRoutes.hotel) {
        return SlideRoute(builder: builder, startOffset: getOffsetByTransitionName(TransitionName.slideLeft));
      }
      if (settings.name == AppRoutes.home) {
        return SlideRoute(builder: builder, startOffset: getOffsetByTransitionName(TransitionName.slideDown));
      }

      if (settings.name == AppRoutes.login) {
        return SlideRoute(builder: builder, startOffset: getOffsetByTransitionName(TransitionName.slideLeft));
      }

      if (settings.name == AppRoutes.signup) {
        return SlideRoute(builder: builder, startOffset: getOffsetByTransitionName(TransitionName.slideRight));
      }

      return MaterialPageRoute(
        builder: builder,
      );
    } catch (e) {
      throw const FormatException("--- Route doesn't exist");
    }
  }
}
