import 'package:flutter/material.dart';
import 'button_purple.dart';

// ignore: must_be_immutable
class DescripcionPlace extends StatelessWidget{

String namePlace;
int stars;
String descripcionPlace;

DescripcionPlace(this.namePlace, this.stars, this.descripcionPlace);

@override
Widget build(BuildContext context){

final starHalf = Container(
    margin: EdgeInsets.only(
      top: 350.0,
      right: 3.0
    ),
    child: Icon(
      Icons.star_half,
    color: Color(0xFFFFD700),
    ),
  );
  final starBorder = Container(
    margin: EdgeInsets.only(
      top: 350.0,
      right: 3.0
    ),
    child: Icon(
      Icons.star_border,
    color: Color(0xFFFFD700),
    ),
  );

  final star = Container(
    margin: EdgeInsets.only(
      top: 350.0,
      right: 3.0
    ),
    child: Icon(
      Icons.star,
    color: Color(0xFFFFD700),
    ),
  );

  final titleStarts = Row(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(
        top: 350.0,
        left: 20.0,
        right: 20.0 
      ),
      child: Text(
        namePlace,
        style: TextStyle(
          fontFamily: "BaskervvilleSC",
          fontSize: 30.0,
          fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
    ),

    Row(
      children: <Widget>[
        star,
        star,
         starHalf,
         starBorder,
         starBorder
      ]
    )
  ]
  );
    final description = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descripcionPlace,
        style: TextStyle(fontFamily: "Nunito", fontSize: 16.0, fontWeight: FontWeight.w400),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStarts,
        description,
        ButtonPurple("Navegar")
      ],
    );
  }
}