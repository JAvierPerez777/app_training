import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class RoutesRepository {
  void getRoutesStartToEnd(LatLng start, LatLng end);
  void searchPlaces(LatLng proximity, String query);
}
