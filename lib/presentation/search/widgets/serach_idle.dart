import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/constants_widgets.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

const imageUri =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/gFZriCkpJYsApPZEF3jhxL4yLzG.jpg';

class SearchIdleWidgets extends StatelessWidget {
  const SearchIdleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTileWidget(
          searchTitle: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) =>const TopSearchItemTile(),
              separatorBuilder: (context, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUri,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            "MOVIE NAME",
            style: TextStyle(
              color: ktextwhite,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: kwhite,
          radius: 28,
          child: CircleAvatar(
            backgroundColor: kblack,
            radius: 27,
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.play_fill,
                color: kwhite,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
