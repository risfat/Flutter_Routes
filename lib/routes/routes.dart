import 'package:flutter/material.dart';

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

      if (settings.name == AppRoutes.hotel || settings.name == AppRoutes.home) {
        return SlideRoute(builder: builder, startOffset: const Offset(0, 1), endOffset: Offset.zero);
      }
      if (settings.name == AppRoutes.home) {
        return SlideRoute(builder: builder, startOffset: const Offset(1, 0), endOffset: const Offset(1, 0));
      }

      if (settings.name == AppRoutes.login) {
        return SlideRoute(builder: builder, startOffset: const Offset(1, 0), endOffset: const Offset(0, 0));
      }

      if (settings.name == AppRoutes.signup) {
        return SlideRoute(builder: builder, startOffset: const Offset(1, 0), endOffset: const Offset(0, 0));
      }

      return MaterialPageRoute(
        builder: builder,
      );
    } catch (e) {
      throw const FormatException("--- Route doesn't exist");
    }
  }
}
