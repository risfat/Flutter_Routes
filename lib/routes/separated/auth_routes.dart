import '../../views/login_view.dart';
import '../../views/signup_view.dart';
import '../app_routes.dart';
import '../route_type.dart';

Map<String, RouteType> authRoutes = {
  AppRoutes.login: (context, settings) => const LoginView(),
  AppRoutes.signup: (context, settings) => const SignUpView(),
};
