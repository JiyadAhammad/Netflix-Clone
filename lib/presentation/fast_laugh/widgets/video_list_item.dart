import 'package:flutter/material.dart';
import 'package:netflix/constants/baseurl/base_url.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/domain/downlods/models/downloads_model.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterpath = VideoListItemInherit.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Left side
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: kwhite,
                      size: 30,
                    ),
                  ),
                ),

                // Right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: posterpath == null
                            ? null
                            : NetworkImage(
                                '$kImageURL$posterpath',
                              ),
                      ),
                    ),
                    const VideoActionWidgets(
                      actionIcon: Icons.emoji_emotions,
                      actionTitle: 'LOL',
                    ),
                    const VideoActionWidgets(
                      actionIcon: Icons.add,
                      actionTitle: 'My List',
                    ),
                    const VideoActionWidgets(
                      actionIcon: Icons.share,
                      actionTitle: 'Share',
                    ),
                    const VideoActionWidgets(
                      actionIcon: Icons.play_arrow,
                      actionTitle: 'Play',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.volume_off,
        //         ),
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class VideoActionWidgets extends StatelessWidget {
  final IconData actionIcon;
  final String actionTitle;
  const VideoActionWidgets({
    Key? key,
    required this.actionIcon,
    required this.actionTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Icon(
            actionIcon,
            color: kwhite,
            size: 30,
          ),
          Text(
            actionTitle,
            style: const TextStyle(
              color: ktextwhite,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
