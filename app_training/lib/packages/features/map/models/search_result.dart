class SearchResult {
  const SearchResult({
    required this.cancel,
    this.manual = false,
  });

  final bool cancel;
  final bool manual;
}