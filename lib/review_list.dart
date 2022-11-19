import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Review("Varuna Yasas", "https://i.pravatar.cc/150?img=2",
            "1 star. 5 photos", "There is an amazing place in Sri Lanka"),
        Review("Baby Baby", "https://i.pravatar.cc/150?img=3",
            "1 star. 5 photos", "There is an amazing place in Sri Lanka"),
        Review("Smoking Men", "https://i.pravatar.cc/150?img=5",
            "1 star. 5 photos", "There is an amazing place in Sri Lanka"),
        Review("Asiatic Girl", "https://i.pravatar.cc/150?img=0",
            "1 star. 5 photos", "There is an amazing place in Sri Lanka"),
        Review("Asiatic Girl 2", "https://i.pravatar.cc/150?img=10",
            "1 star. 5 photos", "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}
