import 'package:flutter/material.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/widgets/constants_widgets.dart';
import 'package:netflix/presentation/home/homescreen.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // shrinkWrap: true,
      children: [
        kheight,
        const Text(
          'friends',
          style: TextStyle(
            // letterSpacing: 1,
            color: ktextwhite,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        kheight,
        const Text(
          '''Lorem Ipsum is simply dummy jerjif fjf fjjf xcjkdfv  text  of thl ovrem Ipsum hao fahjf adha hsd fk hafhfhjks dfh skl fhsdfhkah''',
          style: TextStyle(
            color: kgrey,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        kheight50,
        const VideoWidget(
            videoImage:
                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/9RuC3UD6mNZ0p1J6RbfJDUkQ03i.jpg'),
        kheight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            IconsInHome(
              icon: Icons.share,
              buttonName: 'Share',
              textSize: 14,
              iconSize: 40,
            ),
            kwidth,
            IconsInHome(
              icon: Icons.add,
              buttonName: 'My List',
              textSize: 14,
              iconSize: 40,
            ),
            kwidth,
            IconsInHome(
              icon: Icons.play_arrow,
              buttonName: 'Play',
              textSize: 14,
              iconSize: 40,
            ),
            kwidth,
          ],
        ),
        kheight,
      ],
    );
  }
}
