import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/widgets/constants_widgets.dart';
import 'package:netflix/presentation/home/homescreen.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_tab.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyone_watching_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class HotandNewScreen extends StatelessWidget {
  const HotandNewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: Text(
              'Hot & New',
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Row(
                children: [
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
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: kblack,
              unselectedLabelColor: kwhite,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: kwhite,
                borderRadius: kradius30,
              ),
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '👀 Everything Watch',
                )
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEverythingWatch(),
          // TabBarFirstScreen(),
          // TabBarScondScreen(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => const ComingSoonTab(
        month: 'SEP',
        date: 11,
        filmName: 'TALL GIRL 2',
        realiseDate: "Coming on september 11",
      ),
    );
  }

  Widget _buildEverythingWatch() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const EveryoneWatchingWidget();
      },
    );
  }
}
