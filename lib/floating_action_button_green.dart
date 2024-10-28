import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isFavorited = false; // Variable de estado para el icono

  void onPressedFav() {
    // Cambiar el estado del icono
    setState(() {
      isFavorited = !isFavorited; // Cambia entre verdadero y falso
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Agregado a favoritos."),
            Icon(Icons.favorite, color: Colors.yellow), // Icono de favorito
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        isFavorited ? Icons.favorite : Icons.favorite_border, // Cambia el icono basado en el estado
      ),
    );
  }
}