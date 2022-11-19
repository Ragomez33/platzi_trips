import 'package:flutter/material.dart';

import 'button_purple.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  String descriptionText;
  int stars;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(descriptionText,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.black54)),
    );

    final starHalf = Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child: const Icon(Icons.star_half,
            color: Color.fromARGB(255, 237, 185, 30)));
    final starBorder = Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child: const Icon(Icons.star_border,
            color: Color.fromARGB(255, 237, 185, 30)));
    final star = Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child:
            const Icon(Icons.star, color: Color.fromARGB(255, 237, 185, 30)));
    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, starHalf, starBorder],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStars, description, ButtonPurple("Navigate")],
    );
  }
}
