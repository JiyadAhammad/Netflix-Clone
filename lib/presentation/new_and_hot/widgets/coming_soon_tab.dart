import 'package:flutter/material.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/constants_widgets.dart';
import 'package:netflix/presentation/home/homescreen.dart';

class ComingSoonTab extends StatelessWidget {
  final String month;
  final int date;
  final String filmName;
  final String realiseDate;
  const ComingSoonTab({
    Key? key,
    required this.month,
    required this.date,
    required this.filmName,
    required this.realiseDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 500,
          child: Column(
            children: [
              Text(
                month,
                style: const TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                  color: kgrey,
                ),
              ),
              Text(
                "$date",
                style: const TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 60,
          // width: double.infinity,
          height: 500,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: kradius10,
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/9RuC3UD6mNZ0p1J6RbfJDUkQ03i.jpg',
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
              ),
              kheight20,
              Row(
                children: [
                  Text(
                    filmName,
                    style: const TextStyle(
                      letterSpacing: -3,
                      color: ktextwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),

                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.notification_important,
                  //     color: kwhite,
                  //   ),
                  // ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.info,
                  //     color: kwhite,
                  //   ),
                  // ),
                ],
              ),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  IconsInHome(
                    icon: Icons.notification_important,
                    buttonName: 'Remind me',
                    iconSize: 25,
                    textSize: 12,
                  ),
                  kwidth,
                  IconsInHome(
                    icon: Icons.info,
                    buttonName: 'Info',
                    iconSize: 25,
                    textSize: 12,
                  ),
                  kwidth20,
                ],
              ),
              kheight20,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  realiseDate,
                  style: const TextStyle(
                    color: kwhite,
                  ),
                ),
              ),
              kheight,
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'The next 365 days',
                  style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              kheight,
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '''Lorem Ipsum is simply dummy jerjif fjf fjjf xcjkdfv  text  of thl ovrem Ipsum hao fahjf adha hsd fk hafhfhjks dfh skl fhsdfhkah''',
                  style: TextStyle(
                    color: kgrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
