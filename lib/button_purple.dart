import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonPurple extends StatelessWidget {
  String buttonText;
  ButtonPurple(this.buttonText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Tap")))
          }),
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
                colors: [Colors.purple, Colors.purpleAccent],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6])),
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.w900, color: Colors.white),
        )),
      ),
    );
  }
}
