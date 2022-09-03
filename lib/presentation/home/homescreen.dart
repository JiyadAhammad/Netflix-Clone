import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/widgets/constants_widgets.dart';
import 'package:netflix/presentation/home/widgets/number_card_tile.dart';
import '../widgets/main_title_card.dart';

ValueNotifier scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(
        const GetHomeScreenData(),
      );
    });
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 600,
                          // color: Colors.green,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asset/image/peak.jpg'),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const IconsInHome(
                                icon: Icons.add,
                                buttonName: 'My List',
                              ),
                              _stackIconHomeScreen(),
                              const IconsInHome(
                                icon: Icons.info,
                                buttonName: 'Info',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    kheight,
                    const MainCardTile(cardTitle: 'Released in the past year'),
                    kheight,
                    const MainCardTile(cardTitle: 'Trending Now'),
                    kheight,
                    const NumbeCard(),
                    kheight,
                    const MainCardTile(cardTitle: 'Tense Dramas'),
                    kheight,
                    const MainCardTile(cardTitle: 'South Indian Cinema'),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 1000,
                        ),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'asset/image/netflix_PNG22.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.cast,
                                    color: kwhite,
                                    size: 30,
                                  ),
                                ),
                                // kwidth,
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.lightBlue,
                                ),
                                kwidth,
                              ],
                            ),
                            kheight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Tv Shows",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Movies",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : kheight,
              ],
            ),
          );
        },
      ),
    );
  }

  TextButton _stackIconHomeScreen() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: kblack,
        size: 30,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
            color: kblack,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class IconsInHome extends StatelessWidget {
  final IconData icon;
  final String buttonName;
  final double iconSize;
  final double textSize;
  const IconsInHome({
    Key? key,
    required this.icon,
    required this.buttonName,
    this.iconSize = 30,
    this.textSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: iconSize,
        ),
        Text(
          buttonName,
          style: TextStyle(
            color: kwhite,
            fontSize: textSize,
          ),
        )
      ],
    );
  }
}
