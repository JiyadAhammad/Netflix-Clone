import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constants/constants_widgets.dart';

class NumberCardWidget extends StatelessWidget {
  final int index;
  const NumberCardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
                height: 150,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // padding: EdgeInsets.symmetric(vertical: 50),
                height: 250,
                width: 130,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: kradius10,
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            bottom: 0,
            child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: Colors.white,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 100,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.red,
                ),
              ),
            ),
            // child: Text(
            //   "${index + 1}",
            //   style: TextStyle(
            //     fontSize: 100,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
