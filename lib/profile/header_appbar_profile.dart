import 'package:flutter/material.dart';
import 'package:platzi_trips/profile/circle_button.dart';

class HeaderAppbarProfile extends StatelessWidget {
  const HeaderAppbarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
      width: 90.0,
      height: 90.0,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          shape: BoxShape.circle,
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://i.pravatar.cc/150?img=2"))),
    );
    final dataUser = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Pathum Tzoo",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text("raggmagm@gmail.com",
            style: TextStyle(
              fontSize: 15.00,
              fontWeight: FontWeight.bold,
              color: Colors.white30,
            )),
      ],
    );
    final menu = Row(
      children: [
        CircleButton(true, Icons.tag, 20, Colors.white),
        CircleButton(true, Icons.gif_box, 20, Colors.white),
        CircleButton(false, Icons.add, 40, Colors.white),
        CircleButton(true, Icons.email, 20, Colors.white),
        CircleButton(true, Icons.person, 20, Colors.white),
      ],
    );

    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 100.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: Row(
              children: [userPhoto, dataUser],
            ),
          ),
          menu
        ],
      ),
    );
  }
}
