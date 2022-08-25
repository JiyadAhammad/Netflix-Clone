import 'package:flutter/material.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/constants_widgets.dart';
import 'package:netflix/presentation/home/widgets/number_card_tile.dart';
import '../widgets/main_title_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  // color: Colors.green,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
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
  const IconsInHome({
    Key? key,
    required this.icon,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: 35,
        ),
        Text(
          buttonName,
          style: const TextStyle(
            color: kwhite,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
