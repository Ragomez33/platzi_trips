import 'package:flutter/material.dart';

import 'place_container.dart';

class PlacesProfile extends StatelessWidget {
  const PlacesProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(children: const [
        PlacesContainer(),
        PlacesContainer(),
      ]),
    );
  }
}
