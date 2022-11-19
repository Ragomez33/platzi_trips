import 'package:flutter/material.dart';

class FloationActionButtonGreen extends StatefulWidget {
  const FloationActionButtonGreen({super.key});

  @override
  State<FloationActionButtonGreen> createState() =>
      _FloationActionButtonGreenState();
}

class _FloationActionButtonGreenState extends State<FloationActionButtonGreen> {
  bool _pressed = false;
  late String message;
  void onPressedFav() => {
        if (_pressed)
          {message = "Remove favorite"}
        else
          {message = "Select favorite"},
        ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message))),
        setState(() {
          _pressed = !_pressed;
        })
      };

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(_pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
