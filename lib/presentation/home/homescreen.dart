import 'package:flutter/material.dart';
import 'package:netflix/constants/constants_widgets.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/maintitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MainTitleWidgets(
              mainTitle: 'Released  in the past years',
            ),
            kheight,
            MainCard(),
          ],
        ),
      ),
    );
  }
}
