import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class ButtonPurple extends StatelessWidget {

  String buttonText = "Navigate";

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
    /*  showModalBottomSheet(
  context: context,
  builder: (BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 150,
      child: Column(
        children: [
          Text("Opciones de Navegación"),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Ir a Inicio"),
            onTap: () {
              Navigator.pop(context);
              // Agrega la acción de navegación aquí
            },
          ),
        ],
      ),
    );
  },
);*/
/*ScaffoldMessenger.of(context).showMaterialBanner(
  MaterialBanner(
    content: Text("¿Quieres continuar navegando?"),
    actions: [
      TextButton(
        onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
        child: Text("Cancelar"),
      ),
      TextButton(
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
          // Agrega la acción de navegación aquí
        },
        child: Text("Aceptar"),
      ),
    ],
  ),
);*/

showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: Text("Atención"),
      content: Text("¿Quieres navegar a la siguiente página?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("Cancelar"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Agrega la acción de navegación aquí
          },
          child: Text("Aceptar"),
        ),
      ],
    );
  },
);
      },
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp

            )

        ),

        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),

          ),
        ),

      ),
    );
  }
}