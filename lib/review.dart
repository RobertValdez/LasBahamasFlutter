import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {

String pathImage = "assets/img/bahamas.jpg";
String name = "Nevadas Yasas";
String details = "2 review 6 photos";
String comment = "There is an amazing place in Bahamas";

Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

final userComment = Container(
  margin: EdgeInsets.only(
    left: 20.0
  ),
  child: Text(
    comment,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontFamily: "BaskervvilleSC",
      fontSize: 13.0,
      fontWeight: FontWeight.w900
    ),
  ),
);

final userInfo = Container(
  margin: EdgeInsets.only(
    left: 20.0
  ),
  child: Text(
    name,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontFamily: "BaskervvilleSC",
      fontSize: 13.0
    ),
  ),
);

final userName = Container(
  margin: EdgeInsets.only(
    left: 20.0
  ),
  child: Text(
    details,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontFamily: "BaskervvilleSC",
      fontSize: 17.0,
      color: Color(0xFFa3a5a7)
    ),
  ),
);

  final userDetails = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    userName,
    userInfo ,
    userComment
    ],
  );

    final photo = Container(
      margin: EdgeInsets.only(
      top: 20.0,
      left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),

    );


    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}

