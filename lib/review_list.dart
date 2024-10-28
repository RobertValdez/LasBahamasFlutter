import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/bahamas.jpg", "Las Bahamas", "30 review · 12 photos",
         "There is an amazing place in Bahamas"),
          Review("assets/img/lasteresitas.png", "Las Teresitas del Sahara", "4 review · 6 photos",
         "There is an amazing place in Teresitas"),
          Review("assets/img/Brooklyn.jpg", "Brooklyn", "1 review · 2 photos",
         "There is an amazing place in Brooklyn"),
         Review("assets/img/pinguinos.jpg", "Los pinguinos de madagascar", "3 review · 10 photos",
         "Excelente lugar con los pinguinos esos."),
          Review("assets/img/lasterrenas.jpg", "Las Terrenas República Dominicana", "2 review · 20 photos",
         "Muy buen lugar de RD.")
      ],
    );
  }
}