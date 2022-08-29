import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/widgets/constants_widgets.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final wigetlist = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: WidgetAppBar(
            title: "Downloads",
          ),
        ),
        // body:
        body: ListView.separated(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            itemBuilder: (ctx, index) => wigetlist[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 60,
                ),
            itemCount: wigetlist.length));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text(
          "Smart Downloads",
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imgageList = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/stTEycfG9928HYGEISBFaG1ngjM.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hIkKM1nlzk8DThFT4vxgW1KoofL.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ktextwhite,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "We'll download a personalised selection of movies and shows for you, so there's always something to watch on your device.",
          textAlign: TextAlign.center,
          style: TextStyle(color: kgrey, fontSize: 15),
        ),
        kheight,
        SizedBox(
          width: size.width,
          // height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.35,
              ),
              DownlodImageWidget(
                borderRadius: 5,
                size: Size(size.width * 0.38, size.width * 0.5),
                angle: 20,
                margin: const EdgeInsets.only(left: 130, bottom: 15),
                imgageList: imgageList[0],
              ),
              DownlodImageWidget(
                borderRadius: 5,
                size: Size(size.width * 0.38, size.width * 0.5),
                angle: -20,
                margin: const EdgeInsets.only(bottom: 15, right: 130),
                imgageList: imgageList[1],
              ),
              DownlodImageWidget(
                borderRadius: 8,
                size: Size(size.width * 0.4, size.width * 0.58),
                margin: const EdgeInsets.only(top: 20),
                imgageList: imgageList[2],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kbtnblue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set Up",
                style: TextStyle(
                  color: kwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        kheight,
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kbtnwhite),
            // maximumSize: MaterialStateProperty.all(const Size(64, 40)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text(
            " See What You Can Download",
            style: TextStyle(
              color: ktextblack,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // MaterialButton(
        //   materialTapTargetSize: MaterialTapTargetSize.padded,
        //   color: kbtnwhite,
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(10)),
        //   onPressed: () {},
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 10),
        //     child: const Text(
        //       "See what you can download",
        //       style: TextStyle(
        //         color: ktextblack,
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class DownlodImageWidget extends StatelessWidget {
  const DownlodImageWidget({
    Key? key,
    this.angle = 0,
    required this.size,
    required this.margin,
    required this.imgageList,
    required this.borderRadius,
  }) : super(key: key);

  final String imgageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        // color: kblack,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imgageList,
            ),
          ),
        ),
      ),
    );
  }
}
