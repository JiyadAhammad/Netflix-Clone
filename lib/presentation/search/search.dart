import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/widgets/constants_widgets.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';
import 'package:netflix/presentation/search/widgets/serach_idle.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                placeholder: 'Search',
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgrey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgrey,
                ),
                style: const TextStyle(color: ktextwhite),
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context).add(
                    SearchMovie(
                      movieQuery: value,
                    ),
                  );
                },
              ),
              kheight20,
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResultList.isEmpty) {
                    return const SearchIdleWidgets();
                  } else {
                    return const SearchResultWidget();
                  }
                },
              )),
              // const Expanded(child: SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
