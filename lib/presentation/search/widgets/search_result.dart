import 'package:flutter/material.dart';
import 'package:netflix/constants/constants_widgets.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';
import 'package:netflix/presentation/search/widgets/serach_idle.dart';

const imgageuri =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTileWidget(
          searchTitle: 'Movies & Tv',
        ),
        kheight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3.5 / 5,
            children: List.generate(
              20,
              (index) {
                return const MainMovieCardLidtItem();
              },
            ),
          ),
        )
      ],
    );
  }
}

class MainMovieCardLidtItem extends StatelessWidget {
  const MainMovieCardLidtItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
            imgageuri,
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
