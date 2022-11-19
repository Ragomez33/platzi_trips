import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    const dummy =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.";

    return Stack(children: [
      ListView(
        children: [
          DescriptionPlace("Caracas", 5, dummy),
          const ReviewList(),
        ],
      ),
      const HeaderAppBar(),
    ]);
  }
}
