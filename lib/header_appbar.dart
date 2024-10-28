import 'package:flutter/material.dart';
import 'package:nuevo_project/card_image_list.dart';
import 'package:nuevo_project/gradiente_back.dart';

class HeaderAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Stack(
    children: <Widget>[
      GradienteBack("Bienvenido"),
      CardImageList()
    ],
   );
  }

}