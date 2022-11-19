import 'package:flutter/material.dart';
import 'package:platzi_trips/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/beach_palm.jpeg"),
          CardImage("assets/beach.jpeg"),
          CardImage("assets/mountain_stars.jpeg"),
          CardImage("assets/river.jpeg"),
          CardImage("assets/sunset.jpeg"),
        ],
      ),
    );
  }
}
