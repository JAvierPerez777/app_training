import 'package:app_training/packages/core/ui/colors.dart';
import 'package:app_training/packages/features/map/models/search_result.dart';
import 'package:flutter/material.dart';

class SearchDestionationDelegate extends SearchDelegate<SearchResult> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.close,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        const searchResult = SearchResult(cancel: true);
        close(context, searchResult);
      },
      icon: const Icon(
        Icons.navigate_before,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      iconColor: AppColors.primary,
      leading: const Icon(Icons.location_on_outlined),
      title: const Text('Colocar la ubicación en el mapa'),
      onTap: () {
        const searchResult = SearchResult(cancel: false, manual: true);
        close(context, searchResult);
      },
    );
  }
}
