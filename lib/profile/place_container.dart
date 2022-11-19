import 'package:flutter/material.dart';

import '../floating_action_button_green.dart';

class PlacesContainer extends StatelessWidget {
  const PlacesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final imageBackground = Container(
      height: 200,
      width: screenWidth,
      margin: const EdgeInsets.only(
        top: 80.0,
      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/beach_palm.jpeg")),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    final info = Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              "Knuckles Mountains Range",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                  "Hking, Water fall hunting, Natural bath Sceneray & Photography",
                  style: TextStyle(fontSize: 11, color: Colors.grey))),
          const Text("Steps 123,123,123",
              style: TextStyle(fontSize: 13, color: Colors.red)),
        ]));
    final infoPlace = Container(
        height: 125,
        width: 300,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: Stack(
          alignment: const Alignment(0.8, 1.3),
          children: [info, const FloationActionButtonGreen()],
        ));
    return Stack(
      alignment: const Alignment(0, 1.8),
      children: [imageBackground, infoPlace],
    );
  }
}
