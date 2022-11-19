import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String name;
  final String pathImage;
  final String details;
  final String comments;
  const Review(this.name, this.pathImage, this.details, this.comments,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const star =
        Icon(Icons.star, color: Color.fromARGB(255, 237, 185, 30), size: 11);

    final userComments = Container(
        margin: const EdgeInsets.only(left: 20.0, bottom: 5.0),
        child: Text(comments,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            )));
    final userInfo = Container(
        margin: const EdgeInsets.only(left: 20.0, bottom: 5.0),
        child: Row(children: [
          Text(details,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7),
              )),
          Container(
              margin: const EdgeInsets.only(left: 5.00),
              child: Row(
                children: const [star, star, star, star, star],
              ))
        ]));

    final userName = Container(
        margin: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5.0),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: const TextStyle(fontFamily: "Lato", fontSize: 17.0),
        ));
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComments],
    );
    final photo = Container(
      margin: const EdgeInsets.only(left: 20.0, top: 20.0),
      child: CircleAvatar(backgroundImage: NetworkImage(pathImage), radius: 35),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
