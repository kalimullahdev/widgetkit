import 'package:flutter/material.dart';
import 'package:widgetkit/app/core/extensions/e_buildcontext.dart';

class MaterialAppbarSearch extends StatefulWidget {
  const MaterialAppbarSearch({super.key});

  @override
  State<MaterialAppbarSearch> createState() => _MaterialAppbarSearchState();
}

class _MaterialAppbarSearchState extends State<MaterialAppbarSearch> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  String searchQuery = "";
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: _isSearching ? const BackButton() : const DrawerButtonIcon(),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                onEditingComplete: () async {
                  if (searchQuery.isNotEmpty) {
                    context.snackBar("Search query is $searchQuery");
                  }
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: const InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                ),
                onChanged: (query) => updateSearchQuery(query),
              )
            : const Text("Appbar"),
        actions: [
          _isSearching
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    if (_searchController.text.isEmpty) {
                      Navigator.pop(context);
                      return;
                    }
                    _clearSearchQuery();
                  },
                )
              : IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _startSearch,
                ),
        ]);
  }

  void _startSearch() {
    ModalRoute.of(context)!.addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchController.clear();
    });
  }
}
