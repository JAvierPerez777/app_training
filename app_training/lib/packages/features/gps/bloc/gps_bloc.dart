import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
// Alias para no tener conflictos con geolocator;
import 'package:permission_handler/permission_handler.dart' as per;

part 'gps_event.dart';
part 'gps_state.dart';

class GpsBloc extends Bloc<GpsEvent, GpsState> {
  GpsBloc() : super(GpsState()) {
    on<GpsInitialStatusEvent>(_onGpsInitialStatusEvent);
    on<ChangeGpsStatusEvent>(_onChangerGpsStatusEvent);
    on<AskLocationPermissionsEvent>(_onAskLocationPermissionsEvent);
  }

  FutureOr<void> _onGpsInitialStatusEvent(
      GpsInitialStatusEvent event, Emitter<GpsState> emit) async {
    final gpsEnable = await Geolocator.isLocationServiceEnabled();
    final isGpsPermissionsGranted = await per.Permission.location.isGranted;
    emit(
      GpsState(
        isGpsEnable: gpsEnable,
        isGpsPermissionsGranted: isGpsPermissionsGranted,
      ),
    );
  }

  FutureOr<void> _onChangerGpsStatusEvent(
      ChangeGpsStatusEvent event, Emitter<GpsState> emit) async {
    return emit.forEach(
      Geolocator.getServiceStatusStream(),
      onData: (status) {
        final isGpsEnable = status == ServiceStatus.enabled;
        return GpsState(isGpsEnable: isGpsEnable);
      },
    );
  }

  FutureOr<void> _onAskLocationPermissionsEvent(
      AskLocationPermissionsEvent event, Emitter<GpsState> emit) async {
    final status = await per.Permission.location.request();

    if (status.isDenied || status.isPermanentlyDenied) {
      per.openAppSettings();
      return;
    }

    emit(state.copyWith(
      isGpsPermissionsGranted: true,
    ));
  }
}

  /// existe dos funciones simples y faciles para ejecutar acciones en la app
  /// cuando en el gadget(telefono) se ejecute una accion a la que se haga
  /// referencia la funcion:
  /// - for each && on each
  /// for each ->
  /// -> sirve para cuando se requiere que se ejecute la accion en la app
  /// cada vez que exista la accion el gadget.
  /// on each ->
  /// -> sirve para cuando se se requiere que se ejecute una sola vez la
  /// accion en la app.
  ///

  