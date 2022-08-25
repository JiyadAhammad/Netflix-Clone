import 'package:flutter/material.dart';
import 'package:netflix/constants/constants_widgets.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 150,
      // color: Colors.green,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3H1WFCuxyNRP35oiL2qqwhAXxc0.jpg',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: kradius10,
      ),
    );
  }
}