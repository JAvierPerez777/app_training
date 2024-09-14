import 'package:app_training/packages/core/ui/colors.dart';
import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(const MapState());

  GoogleMapController? _mapController;

  void onMapInitialized(GoogleMapController controller) {
    _mapController = controller;
    // _mapController?.setMapStyle(jsonEncode(mapStyle));
    emit(state.copyWith(
      isMapInitialized: true,
    ));
  }

  void moveCamera(LatLng position) {
    final cameraUpdate = CameraUpdate.newLatLng(position);
    _mapController?.moveCamera(cameraUpdate);
  }

  void addUserPolyline(List<LatLng> points) {
    final myRoute = Polyline(
      polylineId: const PolylineId('myRoute'),
      points: points,
      color: AppColors.primary,
      width: 5,
      endCap: Cap.roundCap,
      startCap: Cap.roundCap,
      patterns: [
        PatternItem.dot,
        PatternItem.gap(8),
      ],
    );

    /// {
    ///   myRoute: Polyline1,
    ///   directions: Polyline2,
    /// }
    final currentPolylines = Map<String, Polyline>.from(state.polylines);
    currentPolylines['myRoute'] = myRoute;

    /// {
    ///   myRoute: NewPolyline1,
    ///   directions: Polyline2,
    /// }
    ///
    emit(
      state.copyWith(polylines: currentPolylines),
    );
  }

  void togglePolylineShown() {
    final isPolylineShown = state.isPolylineShown;
    emit(state.copyWith(isPolylineShown: !isPolylineShown));
  }
}
