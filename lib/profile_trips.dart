import 'package:flutter/material.dart';

import 'profile/gradient_back_profile.dart';
import 'profile/header_appbar_profile.dart';
import 'profile/places_profile.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const GradientBackProfile("Profile"),
      ListView(
        children: const [HeaderAppbarProfile(), PlacesProfile()],
      )
    ]);
  }
}
