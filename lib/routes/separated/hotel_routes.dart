import '../../views/hotel_detail_view.dart';
import '../../views/hotel_view.dart';
import '../app_routes.dart';
import '../route_type.dart';

Map<String, RouteType> hotelRoutes = {
  AppRoutes.hotel: (context, settings) => const HotelView(),
  AppRoutes.hotelDetail: (context, settings) => const HotelDetailView(),
};
