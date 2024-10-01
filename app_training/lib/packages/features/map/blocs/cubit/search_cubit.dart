import 'package:app_training/packages/data/routes/domain/places.dart';
import 'package:app_training/packages/data/routes/domain/routes.dart';
import 'package:app_training/packages/data/routes/infrastructure/routes_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  final routeRepository = RoutesRepositoryImpl();

  void updateShowManualMarker(bool newValue) {
    emit(state.copyWith(showManualMarker: newValue));
  }

  Future getRoute(LatLng start, LatLng end) async {
    emit(state.copyWith(isLoading: true));
    final route = await routeRepository.getRoutesStartToEnd(start, end);

    if (route == null) return;

    emit(state.copyWith(route: route, isLoading: false));
  }

  void searchPlaces(LatLng proximity, String query) async {
    final response = await routeRepository.searchPlaces(proximity, query);
    emit(state.copyWith(places: response));
  }
}
