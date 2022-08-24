import 'package:flutter/material.dart';

class SearchTileWidget extends StatelessWidget {
  final searchTitle;
  const SearchTileWidget({Key? key, required this.searchTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      searchTitle,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
