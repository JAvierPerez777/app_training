import 'package:app_training/packages/data/routes/domain/places.dart';

class SearchResult {
  const SearchResult({
    required this.cancel,
    this.manual = false,
    this.place,
  });

  final bool cancel;
  final bool manual;
  final Place? place;
}
