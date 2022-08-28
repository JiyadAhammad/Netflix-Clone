import 'package:flutter/material.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/constants_widgets.dart';

class VideoWidget extends StatelessWidget {
  final String videoImage;
  const VideoWidget({
    Key? key,
    required this.videoImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: kradius10,
            image:  DecorationImage(
                image: NetworkImage(
                  videoImage,
                  // 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/9RuC3UD6mNZ0p1J6RbfJDUkQ03i.jpg',
                ),
                fit: BoxFit.cover),
          ),
          // child: Image.network(
          //   'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/9RuC3UD6mNZ0p1J6RbfJDUkQ03i.jpg',
          //   fit: BoxFit.cover,
          // ),
        ),
        Positioned(
          // left: 0,
          right: 10,
          bottom: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: const Icon(
              Icons.volume_off,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
