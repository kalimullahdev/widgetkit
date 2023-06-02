import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetkit/app/application/search_cubit/search_cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void deactivate() {
    context.read<SearchCubit>().reset();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: "Search widget",
          ),
          onChanged: (query) async => context.read<SearchCubit>().search(query),
        ),
      ),
      body: Center(
        child: BlocBuilder<SearchCubit, SearchState>(
          buildWhen: (previous, current) {
            return previous.widgets != current.widgets ||
                !(previous == SearchState.success(previous.widgets) && current == SearchState.loading(current.widgets));
          },
          builder: (context, searchState) {
            return searchState.map(
              empty: (_) => const Text("Search widgets"),
              notFound: (_) => const Text("No widget found"),
              success: (value) {
                return ListView.builder(
                  itemCount: value.widgets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return value.widgets[index];
                  },
                );
              },
              loading: (_) => const CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
